const { task } = require('gulp');
const { cfg, log, runRemote, createRemoteDir, removeRemoteFile, uploadFile, getRemoteFile, sshConnect, sshDisconnect, createLocalDir, prompt, getEnv, validateArgs, checkIfRemoteExists, removeLocal, checkEnv, args, pack, unpack, path } = require('../utils');

let isPrompted = false;

/**
 * UTILITIES
 */
const getSrcPath = (env, src) => {
  // If the environment is 'local', construct the local source path
  if (env === 'local') {
    const subfolder = cfg.path[src] ? `/${cfg.path[src]}` : '';
    return `${cfg.appBase}${subfolder}`;
  }

  // For non-local environments, return the configured path or default to '.'
  return cfg.path[src] || '.';
};

const getDestPath = (basePath, src) => (cfg.path[src]) ? `${basePath}/${cfg.path[src]}` : `${basePath}`;

const getConfig = (env, src) => {
  const { SSH_PATH, SSH_SUDO, SSH_USERNAME, SSH_HOST, HTACCESS_MODIFY } = getEnv(env);
  const sudo = SSH_SUDO ? 'sudo ' : '';
  const suffix = src ? `-${src}` : '';
  const archiveName = `${cfg.siteName}${suffix}.tar.gz`;
  const srcPath = getSrcPath(env, src);

  return { sudo, archiveName, SSH_PATH, SSH_USERNAME, SSH_HOST, srcPath, HTACCESS_MODIFY };
};

/**
 *  MAIN FUNCTIONS
 */

// Backup local | remote
const backup = (env, src = null, cb, targetPath = null, migrate = false) => {
  log.info(`====== Creating ${env} backup ======`);
  const { sudo, archiveName, SSH_PATH, srcPath } = getConfig(env, src);
  const remoteArchivePath = `${SSH_PATH}/${archiveName}`;
  const targetFolder = targetPath ? targetPath : cfg.path.backup;
  const localArchivePath = `${targetFolder}/${env}-${archiveName}`;

  const callback = () => {
    if (migrate) {
      cb(localArchivePath); // Call the callback with the localArchivePath argument if migrating
    } else {
      cb(); // Call the callback without arguments otherwise
    }
  };

  (env === 'local') ? createLocalBackup() : createRemoteBackup();

  // Local backup
  async function createLocalBackup() {
    await createLocalDir(targetFolder);
    await pack(srcPath, localArchivePath, callback);
  }

  // Remote backup
  async function createRemoteBackup() {

    const conn = await sshConnect(env);
    await createArchive();

    async function createArchive() {
      const maxRetries = 3; // Maximum number of retries
      let success = false;
      let attempt = 0;

      while (!success && attempt < maxRetries) {
        try {
          await runRemote(conn, {
            cmd: `${sudo}cd ${SSH_PATH} && ${sudo}tar -C ${srcPath} --exclude=${archiveName} --xform s:'^./':: -czf ${remoteArchivePath} .`,
            spinner: `Creating archive of ${SSH_PATH}/${srcPath} (Attempt ${attempt + 1})`
          });
          success = true; // If runRemote completes without error, mark success
        } catch (error) {
          attempt++;
          if (attempt >= maxRetries) {
            log.error('Maximum backup attempts reached, backup failed.');
            await removeRemoteFile(conn, remoteArchivePath);
            callback();
          }
        }
      }

      if (success) {
        await getAndUnpack();
      }
    }

    async function getAndUnpack() {
      await createLocalDir(targetFolder);
      await getRemoteFile(conn, remoteArchivePath, localArchivePath);
      await removeRemoteFile(conn, remoteArchivePath);
      await sshDisconnect(conn, callback);
    }
  }
}

// Deploy to remote
const deploy = (env, src, cb, archivePath = null) => {
  log.info(`====== Deploying to ${env} ======`);
  const { sudo, archiveName, SSH_PATH, SSH_USERNAME, SSH_HOST, HTACCESS_MODIFY } = getConfig(env, src);
  let localSrc = archivePath ? archivePath : `${cfg.path.backup}/local-${archiveName}`;

  const dest = getDestPath(SSH_PATH, src);
  const remoteArchivePath = `${dest}/${archiveName}`;
  const envFileSrc = `.env.${env}`;

  // Check correct path on test server
  if (SSH_PATH === cfg.testServerPath) {
    log.error('Invalid path for staging server!!!');
    process.exit(1);
  } else {
    sshConnect(env).then((conn) => {
      checkIfRemoteExists(conn, dest)
        .then(async (exists) => {
          if (exists) {
            if (!isPrompted) {
              prompt({
                message: `It will rewrite all files & folders at existing path: \n "${SSH_USERNAME}@${SSH_HOST}${dest}" \n Are you sure?`,
                callback: () => startDeploy(conn, true),
                fallback: () => sshDisconnect(conn, cb)
              });
            } else {
              startDeploy(conn, true);
            }
          } else {
            startDeploy(conn, false);
          }
        })
        .catch(err => {
          log.error(err.message);
          sshDisconnect(conn, cb);
        });
    });
  }

  async function startDeploy(conn, destExists = false) {

    if (!destExists) {
      await createRemoteDir(conn, dest);
    }

    if (!archivePath) {
      // Create a backup only if no archivePath is provided
      backup('local', src, () => upload(conn));
    } else {
      // Skip backup step and directly upload if archivePath is provided
      await upload(conn);
    }

  }

  async function upload(conn) {
    await uploadFile(conn, localSrc, remoteArchivePath);
    await cleanUpTarget(conn);
  }

  async function cleanUpTarget(conn) {
    await runRemote(conn, {
      cwd: SSH_PATH,
      cmd: `${sudo}find ${dest} -type f | grep -v "${archiveName}" | xargs ${sudo}rm -f; while ${sudo}find ${dest} -depth -type d -empty | xargs -I {} ${sudo}rmdir {} && [ -n "$(find ${dest} -depth -type d -empty)" ]; do :; done`,
      spinner: `Removing all in ${dest} except "${archiveName}"`
    });

    await unpackRemote(conn);
  }

  async function unpackRemote(conn) {

    await runRemote(conn, {
      cwd: SSH_PATH,
      cmd: `${sudo}tar -xf ${remoteArchivePath} -C ${dest}; ${sudo}rm -rf ${remoteArchivePath}`,
      spinner: `Unpacking ${remoteArchivePath} (autoremove after success)`,
    });

    if (src === cfg.appBase) {
      await setEnvOptions(conn);
    } else {
      await setPermissions(conn);
    }
  }

  async function setEnvOptions(conn) {
    await uploadFile(conn, envFileSrc, `${SSH_PATH}/.env`);
    await setPermissions(conn);
  }

  async function setPermissions(conn) {

    let cmd = `${sudo}find ${dest} -type f -print0 | xargs -0 chmod 644;`
    cmd += `${sudo}find ${dest} -type d -print0 | xargs -0 chmod 755;`;

    let msg = 'Updating chmod.';

    // Custom .htaccess update for "bambuky tests" subdomain
    if (HTACCESS_MODIFY && src === cfg.appBase) {
      msg += "Rewriting rules in .htaccess";
      cmd += `${sudo}sed -i 's,RewriteBase /,RewriteBase /${cfg.siteName}/,g' ${SSH_PATH}/.htaccess;`
      cmd += `${sudo}sed -i 's,RewriteRule . /index.php,RewriteRule . /${cfg.siteName}/index.php,g' ${SSH_PATH}/.htaccess`;
    }

    await runRemote(conn, {
      cwd: SSH_PATH,
      cmd: cmd,
      spinner: msg,
    });

    await sshDisconnect(conn, cb);
  }
}

// Migrate between envs with rewriting
const migrate = (srcEnv, targetEnv, src, cb) => {
  log.info(`====== Migrating ${srcEnv} to ${targetEnv} ======`);
  (targetEnv === 'local') ? migrateToLocal() : migrateToRemote();

  function migrateToLocal() {
    // Specify the target path for the local environment
    const localDest = `${cfg.appBase}/${getDestPath('', src).replace(/^\//, '')}`;
    const { archiveName } = getConfig(srcEnv, src);
    const localArchivePath = `${localDest}/${srcEnv}-${archiveName}`;
    const projectRoot = path.resolve(__dirname, '..', '..');
    const absoluteLocalDest = path.join(projectRoot, localDest);

    // Create backup of src env
    backup(srcEnv, src, unpackLocal, localDest);

    async function unpackLocal() {
      await removeLocal([`${localDest}/*`, `!${localArchivePath}`]);
      await unpack(localArchivePath, absoluteLocalDest);
      await removeLocal(localArchivePath, cb);
    };
  }

  function migrateToRemote() {
    const { SSH_PATH, SSH_USERNAME, SSH_HOST } = getConfig(targetEnv, src);
    const dest = getDestPath(SSH_PATH, src);

    sshConnect(targetEnv).then(conn => checkMigration(conn));

    function checkMigration(conn) {
      checkIfRemoteExists(conn, dest).then(exists => {
        if (exists) {
          prompt({
            message: `It will rewrite all files & folders at existing path: \n "${SSH_USERNAME}@${SSH_HOST}${dest}" \n Are you sure?`,
            callback: () => {
              isPrompted = true;
              initMigration(conn);
            }
          });
        } else {
          initMigration(conn);
        }
      }).catch(err => {
        log.error(err.message);
        sshDisconnect(conn, cb);
      });
    }

    function initMigration(conn) {
      sshDisconnect(conn, () => {
        backup(srcEnv, src, (archivePath) => {
          if (!archivePath) {
            log.error('Backup failed. Aborting deploy.');
            cb();
          } else {
            deploy(targetEnv, src, cb, archivePath);
          }
        }, null, true);
      })

    }
  }
}

module.exports = () => {

  // Backup task
  task('backup', (cb) => {
    const from = args.from || 'local'; // Source environment (local, staging, or production)
    const src = args.src; // Source (app, theme, or uploads)

    checkEnv([from])
      .then(() => validateArgs(args, ['src']))
      .then(() => backup(from, src, cb));
  });

  // Deploy task
  task('deploy', (cb) => {
    const to = args.to; // Destination environment (local, staging, or production)
    const src = args.src; // Source (app, theme, or uploads)

    checkEnv([to])
      .then(() => validateArgs(args, ['to', 'src']))
      .then(() => deploy(to, src, cb));
  });

  // Migrate task
  task('migrate', (cb) => {
    const from = args.from; // Source environment (local, staging, or production)
    const to = args.to; // Destination environment (local, staging, or production)
    const src = args.src; // Source (app, theme, or uploads)

    checkEnv([from, to])
      .then(() => validateArgs(args, ['from', 'to', 'src']))
      .then(() => migrate(from, to, src, cb));
  });
}
