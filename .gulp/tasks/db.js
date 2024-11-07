const { src, dest, task } = require('gulp');
const gp = require('gulp-load-plugins')();
const { cfg, args, log, spinner, runLocal, runRemote, uploadFile, getRemoteFile, removeRemoteFile, sshConnect, sshDisconnect, removeLocal, createLocalDir, prompt, getEnv, getTimeStamp, validateArgs, checkEnv } = require('../utils');

let isPrompted = false;

// Check password
const askPass = (env, pass) => (env === 'local') ? '' : ` -p'${pass}'`;

// Check if DB exists
function checkDB(env, cb) {
  const { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, sudo } = getEnv(env);
  // Changed query to check if database exists
  const query = `${sudo}mysql -u${DB_USER} -h${DB_HOST}${askPass(env, DB_PASSWORD)} -e "SELECT SCHEMA_NAME FROM INFORMATION_SCHEMA.SCHEMATA WHERE SCHEMA_NAME = '${DB_NAME}'"`;

  (env === 'local') ? checkLocal() : checkRemote();

  async function checkLocal() {
    runLocal({
      cmd: query,
      spinner: `Checking database "${DB_NAME}" at "${DB_HOST}"`,
      callback(reponse) {
        cb(reponse.includes(DB_NAME));
      }
    });
  }

  async function checkRemote() {
    try {
      const conn = await sshConnect(env);
      runRemote(conn, {
        cmd: query,
        spinner: `Checking database "${DB_NAME}" at "${DB_HOST}"`,
        callback(response) {
          sshDisconnect(conn).then(() => {
            cb(response?.includes(DB_NAME));
          });
        }
      });
    } catch (error) {
      log.error('SSH connection error');
      cb(false);
    }
  }
}

// Create DB
function createDB(env, temp = false, cb) {
  log.info(`====== Creating ${env} database ======`);
  let { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, sudo, SSH_USERNAME, SSH_HOST, SSH_PATH } = getEnv(env);
  let dump = (temp) ? 'dump-migrate.sql' : 'dump.sql';
  let cmd = `${sudo}mysql -u${DB_USER} -h${DB_HOST}${askPass(env, DB_PASSWORD)} -e"`;
  cmd += `DROP DATABASE IF EXISTS ${DB_NAME};`;
  cmd += `CREATE DATABASE IF NOT EXISTS ${DB_NAME} CHARACTER SET ${cfg.dbCharSet} COLLATE ${cfg.dbCollate};`;
  cmd += `"`;

  if (isPrompted) {
    runCreate();
  } else {
    checkDB(env, exists => exists ? promptBefore() : runCreate());
  }

  function promptBefore() {
    prompt({
      message: `Database "${DB_NAME}" already exists at "${DB_HOST}" (${env}). Do you want to rewrite it?`,
      callback: () => backupDB(env, false, runCreate, true)
    });
  }

  function runCreate() {
    (env === 'local' ? createLocal : createRemote)();
  }

  function createLocal() {
    runLocal({
      cmd,
      spinner: `Creating database "${DB_NAME}" at "${DB_HOST}" (${env})`,
      callback: () => updateDB(env, temp, cb)
    });
  }

  async function createRemote() {

    const conn = await sshConnect(env);

    await uploadFile(conn, dump, `${SSH_PATH}/${dump}`);
    await runRemote(conn, {
      cmd,
      spinner: `Creating database "${DB_NAME}" at "${DB_HOST}" (${env})`,
    });

    await updateDB(env, true, cb, conn);
  }
}

// Update DB
async function updateDB(env, temp, cb, conn) {
  log.info(`====== Updating ${env} database ======`);
  let { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, sudo, SSH_PATH } = getEnv(env);
  let dump = (temp) ? 'dump-migrate.sql' : 'dump.sql';

  (env === 'local') ? updateLocal() : updateRemote();

  async function updateLocal() {
    runLocal({
      cmd: `mysql -u${DB_USER} -h${DB_HOST} ${DB_NAME} < ${dump}`,
      spinner: `Updating database "${DB_NAME}" at "${DB_HOST}" (${env})`,
      callback: () => (temp) ? removeLocal(dump, cb) : cb()
    });
  }

  async function updateRemote() {

    await runRemote(conn, {
      cmd: `${sudo}mysql -u${DB_USER} -h${DB_HOST}${askPass(env, DB_PASSWORD)} ${DB_NAME} < ${SSH_PATH}/${dump}`,
      spinner: `Updating database "${DB_NAME}" at "${DB_HOST}" (${env})`,
    });

    await removeRemoteFile(conn, `${SSH_PATH}/${dump}`);
    await sshDisconnect(conn, () => (temp) ? removeLocal(dump, cb) : cb());
  }
}

// Backup DB
function backupDB(env, temp = false, cb, save = false, fileName = null, saveToMigrate = false) {
  log.info(`====== Backing up ${env} database ======`);
  const { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, sudo, SSH_PATH } = getEnv(env);

  let srcDump = (temp) ? 'dump-migrate.sql' : 'dump.sql';
  srcDump = (fileName) ? fileName : srcDump;

  const targetDump = (save) ? `${cfg.path.backup}/dump-${env}-${getTimeStamp()}.sql` : srcDump;
  let targetDumpPath = (env === 'local') ? targetDump : `${SSH_PATH}/${srcDump}`;
  targetDumpPath = (env === 'local' && saveToMigrate) ? `.migrations/${targetDump}` : targetDumpPath;

  const cmd = `${sudo}mysqldump --disable-keys --no-tablespaces --hex-blob -u${DB_USER}${askPass(env, DB_PASSWORD)} -h${DB_HOST} ${DB_NAME} > ${targetDumpPath}`;

  const spinner = `Saving "${DB_NAME}" at "${DB_HOST}" (${env}) to ${targetDumpPath} `;

  if (save) {
    createLocalDir(cfg.path.backup, runBackup);
  } else {
    runBackup();
  }
  function runBackup() {
    (env === 'local' ? backupLocal : backupRemote)();
  }

  async function backupLocal() {
    runLocal({
      cmd,
      spinner,
      callback: cb
    });
  }

  async function backupRemote() {

    const conn = await sshConnect(env);
    await createDump();

    async function createDump() {
      runRemote(conn, {
        cmd,
        spinner,
        callback: getRemoteDump
      });
    }

    async function getRemoteDump() {
      const targetPath = saveToMigrate ? `.migrations/${targetDump}` : targetDump;
      await getRemoteFile(conn, targetDumpPath, targetPath);
      await removeRemoteFile(conn, targetDumpPath);
      await sshDisconnect(conn, cb);
    }
  }
}

// Update urls in dump file for DB export/migration
function updateUrls(from, to, cb, saveToFile = false, fileName = null) {
  log.info(`====== Updating url's from "${from}" to "${to}" ======`);

  const oldUrl = cfg.url[from];
  const newUrl = cfg.url[to];

  const oldEmail = oldUrl.replace(/^https?:\/\//, '').split('/')[0];
  const newEmail = newUrl.replace(/^https?:\/\//, '').split('/')[0];

  // Update serialized ACF links
  let diff = (oldUrl.length - newUrl.length);
  let acfLink = new RegExp(`s:\[1-9][0-9]{0,2\}:\\\\"${oldUrl}`, 'g');

  let dumpName = (fileName) ? fileName : 'dump-migrate.sql';

  spinner.start(`Changing url's from "${oldUrl}" to "${newUrl}"`, () => {

    return src(dumpName)
      .pipe(gp.plumber(cfg.errorHandler))
      .pipe(gp.replace(acfLink, function handleReplace(match) {

        let sNum = match.match(/(\d+)/);
        let oldNum = parseInt(sNum[0]);
        let newNum = oldNum - diff;

        return `s:${newNum}:\\"${newUrl}`;
      }))
      .pipe(gp.replace(oldUrl, newUrl))
      .pipe(gp.replace(oldEmail, newEmail))
      .pipe(dest(file => file.base))
      .on('finish', () => {
        spinner.stop();
        if (saveToFile) {
          cb();
        } else {
          createDB(to, true, cb);
        }
      });
  });
}

// Migrate DB between env`s (with urls update)
function migrateDB(from, to, cb) {
  log.info(`====== Migrating "${from}" to "${to}" ======`);
  const { DB_HOST, DB_NAME } = getEnv(from);

  checkDB(from, (exists) => {
    if (!exists) {
      log.error(`Source DB "${DB_NAME}" does not exist at "${DB_HOST}"`);
      cb();
    } else {
      checkIfTargetExists();
    }
  })

  function checkIfTargetExists() {
    const { DB_HOST, DB_NAME } = getEnv(to);

    checkDB(to, (exists) => {
      if (!exists) {
        log.error(`Target DB "${DB_NAME}" does not exist at ${DB_HOST}`);
        cb();
      } else {
        runMigration();
      }
    })
  }

  function runMigration() {
    const { DB_HOST, DB_NAME } = getEnv(to);
    prompt({
      message: `Target DB "${DB_NAME}" already exists at "${DB_HOST}". Do you want to rewrite it?`,
      callback() {
        isPrompted = true;

        // Backup target first then create dump for migration
        backupDB(to, false, () => {
          backupDB(from, true, () => {
            updateUrls(from, to, cb)
          });
        }, true);
      }
    });
  }
}

// Export DB to dump (with urls update)
function exportDB(from, to, cb) {
  log.info(`====== Exporting "${from}" to "${to}" ======`);
  const dirName = '.migrations';
  const fileName = `dump-${from}-to-${to}.sql`;

  createLocalDir(dirName, () => {
    backupDB(from, true, () => {
      updateUrls(from, to, cb, true, `${dirName}/${fileName}`);
    }, false, fileName, true);
  });
}

// Delete DB
function deleteDB(env, cb) {
  const { DB_HOST, DB_NAME, DB_USER, DB_PASSWORD, sudo } = getEnv(env);
  const cmd = `${sudo}mysql -u${DB_USER} -h${DB_HOST}${askPass(env, DB_PASSWORD)} -e"DROP DATABASE IF EXISTS ${DB_NAME};"`;

  checkDB(env, exists => {
    if (!exists) {
      log.error(`Database "${DB_NAME}" does not exist at "${DB_HOST}"`);
      cb();
    } else {
      promptBefore();
    }
  });

  function promptBefore() {
    prompt({
      message: `It will delete database "${DB_NAME}" at "${DB_HOST}" (${env}). Are you sure?`,
      callback: runDelete
    });
  }

  function runDelete() {
    if (env === 'local') {
      backupDB('local', false, deleteLocal, true);
    } else {
      backupDB(env, false, deleteRemote, true);
    }
  }

  function deleteLocal() {
    runLocal({
      cmd,
      spinner: `Deleting database "${DB_NAME}" at "${DB_HOST}" (${env})`,
      callback: cb
    });
  }

  async function deleteRemote() {
    const conn = await sshConnect(env);
    runRemote(conn, {
      cmd,
      spinner: `Deleting database "${DB_NAME}" at "${DB_HOST}" (${env})`,
      callback: async () => {
        await sshDisconnect(conn);
        cb();
      }
    });
  }
}

module.exports = () => {

  // Create / rewrite local DB
  task('db:create', cb => createDB('local', false, cb));

  // Backup
  task('db:backup', cb => {
    const from = args.from || 'local';

    args.from
      ? checkEnv([from])
        .then(() => validateArgs(args))
        .then(() => backupDB(from, true, cb, true))
      : backupDB('local', false, cb);
  });

  // Migrate DB between environments
  task('db:migrate', cb => {
    const from = args.from || 'local';
    const to = args.to;

    checkEnv([from, to])
      .then(() => validateArgs(args, ['to']))
      .then(() => migrateDB(from, to, cb));
  });

  // Create a dump of DB with new urls
  task('db:export', cb => {
    const from = args.from || 'local';
    const to = args.to;

    checkEnv([from, to])
      .then(() => validateArgs(args, ['to']))
      .then(() => exportDB(from, to, cb))
  });

  // Delete DB
  task('db:delete', cb => {
    const env = args.env || 'local'; // Default to 'local' if no environment is specified

    checkEnv([env])
      .then(() => validateArgs(args)) // Validate that the 'env' argument is provided, if needed
      .then(() => deleteDB(env, cb));
  });
}