const { task, series, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();
const { cfg, fs, path, onError, log, spinner, localPathExists, runLocal, removeLocal, getEnv, prompt, generateSafePass, spawnCmd } = require('../utils');

const { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, WP_ADMIN_USER, WP_ADMIN_EMAIL } = getEnv('local');

// Create & configure app
const createApp = async (cb) => {

  const pathExists = await localPathExists(cfg.appBase);

  if (pathExists) {
    log.error(`App already installed! If you want to continue, please check if "dist" folder exists and then remove "${cfg.appBase}" folder.`);
    cb();
  } else {
    checkConfig();
  }

  /**
   * Check the configuration for required data and run installation again if errors are found.
   */
  function checkConfig() {

    let errors = [];

    const required = {
      siteName: cfg.siteName,
      themeName: cfg.themeName,
      DB_HOST,
      DB_NAME,
      DB_USER,
      WP_ADMIN_USER,
      WP_ADMIN_EMAIL
    };

    Object.keys(required).forEach(key => {
      if (required[key] === '') {
        errors.push(key);
      }
    });

    if (errors.length) {
      errors.forEach(key => log.error(`${key} value is missing!\n`));
      log.info('Please provide required data and run installation again.');
      cb();
    } else {
      copyFolders();
    }
  }

  /**
   * Copies folders from source to destination.
   */
  function copyFolders() {
    src('dist/**/*', {
      dot: true,
      buffer: false,
      allowEmpty: true
    })
      .pipe(gp.plumber(onError))
      .pipe(dest(cfg.appBase))
      .on('finish', installVendors);
  }

  /**
   * Install vendors using composer.
   */
  async function installVendors() {
    console.log('Installing vendors...');
    await spawnCmd(`composer install`, { shell: true, stdio: 'inherit' }, downloadWP, cb);
  }

  /**
   * Downloads WordPress core with the specified options and handles the child process events.
   */
  async function downloadWP() {
    await spawnCmd(`wp core download --skip-content --force`, { cwd: cfg.appBase, shell: true, stdio: 'inherit' }, createWPconfig, cb);
  }

  /**
   * Creates a WordPress configuration using the provided database and application settings.
   */
  async function createWPconfig() {
    console.log('Creating WordPress configuration...');
    const cmd = `wp config create --dbhost=${DB_HOST} --dbname=${DB_NAME} --dbuser=${DB_USER} --dbpass=${DB_PASSWORD} --dbprefix=${cfg.dbPrefix} --dbcharset=${cfg.dbCharSet} --dbcollate=${cfg.dbCollate} --force --skip-check`;

    await spawnCmd(cmd, { cwd: cfg.appBase, shell: true, stdio: 'inherit' }, createWPDB, cb);
  }

  /**
   * Creates a WordPress database, checks if it exists, drops it if it does, and creates a new one if it doesn't.
   */
  async function createWPDB() {
    console.log('Creating WordPress database...');
    await spawnCmd('wp db reset --yes', { cwd: cfg.appBase, shell: true, stdio: 'inherit' }, installWP, cb);
  }

  /**
   * Installs WordPress with the given configuration.
   */
  async function installWP() {
    console.log('Installing WordPress...');
    const adminPass = generateSafePass(16);

    const cmd = `wp core install --url=${cfg.url.local} --title=${cfg.siteName} --admin_user=${WP_ADMIN_USER} --admin_email=${WP_ADMIN_EMAIL} --admin_password=${adminPass} --skip-email`;

    await spawnCmd(cmd, { cwd: cfg.appBase, shell: true, stdio: 'inherit' }, () => saveAdminPass(adminPass), cb);
  }

  /**
   * Saves the admin password to a file.
   */
  async function saveAdminPass(pass) {
    const passwordFile = 'wp-admin-pass.txt';

    fs.writeFile(passwordFile, pass, (err) => {
      if (err) {
        log.error('Error writing admin password to file:', err);
      } else {
        log.info(`Admin password saved to ${passwordFile}. Don\`t forget to save it and remove the file afterwards!`);
      }
      // cb();
      modifyWPConfig();
    });
  }

  /**
   * Modify the wp-config.php file by including local configuration,
   * removing the existing database settings block, and writing the modified content.
   */
  async function modifyWPConfig() {
    console.log('Modifying wp-config.php...');
    const wpConfigPath = path.join(cfg.appBase, 'wp-config.php');

    try {
      let content = await fs.promises.readFile(wpConfigPath, 'utf8');

      // Define the start and end markers of the block to be removed
      const startMarker = ' * @package WordPress\n */';
      const endMarker = '/**#@+\n * Authentication unique keys and salts.';

      // Define the new content to be added
      const newContent = `\n\n// Include local configuration\nif (file_exists(dirname(__FILE__) . '/local-config.php')) {\n\tinclude(dirname(__FILE__) . '/local-config.php');\n}\n\n`;

      // Remove the existing database settings block
      let start = content.indexOf(startMarker);
      let end = content.indexOf(endMarker, start);

      if (start !== -1 && end !== -1) {
        content = content.slice(0, start + startMarker.length) + newContent + content.slice(end);
      } else {
        throw new Error('Could not find the specified markers in wp-config.php');
      }

      // Write the modified content back to wp-config.php
      await fs.promises.writeFile(wpConfigPath, content, 'utf8');
      console.log('wp-config.php modified successfully.');
      setupApp();
    } catch (error) {
      console.error('Error modifying wp-config.php:', error);
      cb();
    }
  }

  /**
   * Sets up the app by updating the .htaccess file, cleaning files, and cleaning the database.
   */
  function setupApp() {

    updateHtacess();

    function updateHtacess() {

      console.log('Updating .htaccess file...');
      return src([`${cfg.appBase}/.htaccess`], { dot: true })
        .pipe(gp.replace(`RewriteBase /${cfg.appBase}/`, 'RewriteBase /'))
        .pipe(gp.replace(`RewriteRule . /${cfg.appBase}/index.php`, 'RewriteRule . /index.php'))
        .pipe(dest(file => file.base))
        .on('end', cleanFiles);
    }

    function cleanFiles() {
      const toRemove = [
        '.git',
        `${cfg.appBase}/readme.html`,
        `${cfg.appBase}/license.txt`,
        'dist'
      ];

      removeLocal(toRemove, cleanDB);
    }

    function cleanDB() {
      let cmd = `mysql -u${DB_USER} -h${DB_HOST} ${DB_NAME} -e"`;
      cmd += `DELETE from ${cfg.dbPrefix}comments;`;
      cmd += `DELETE from ${cfg.dbPrefix}posts;`;
      cmd += `DELETE from ${cfg.dbPrefix}postmeta;`;
      cmd += `UPDATE ${cfg.dbPrefix}options SET option_value = '${cfg.themeName}' WHERE option_name = 'stylesheet' OR option_name = 'template';`;
      cmd += `UPDATE ${cfg.dbPrefix}options SET option_value = '${cfg.url.local}/' WHERE option_name = 'siteurl' OR option_name = 'home';`;
      cmd += `DELETE FROM ${cfg.dbPrefix}options WHERE option_name LIKE ('%\_transient\_%');`;
      cmd += `"`;

      runLocal({
        cmd,
        spinner: 'Updating WP database. Cleaning unused files...',
        callback: () => {
          log.success('  ✓ App is ready to use!');
          cb();
        }
      });
    }
  }
}

module.exports = () => {
  task('create-app', series(createApp));
}