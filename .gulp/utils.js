const cfg = require('../config');
const fs = require('fs-extra');
const path = require('path');
const glob = require('glob-all');
const del = require('del');
const prompts = require('prompts');
const clc = require('cli-color');
const clui = require('clui');
const Spinner = clui.Spinner;
const cp = require('child_process');
const { Client } = require('ssh2-no-cpu-features');
const { Transform } = require('stream');
const notify = require('gulp-notify');
const args = require('yargs').argv;
const archiver = require('archiver');

async function sshConnect(env, cb) {
  const { SSH_HOST, SSH_PORT, SSH_USERNAME, SSH_KEYNAME, SSH_PASS } = getEnv(env);

  const conn = new Client();

  return new Promise((resolve, reject) => {
    spinner.start(`Connecting to ${SSH_HOST}`);

    conn.on('ready', () => {
      spinner.stop();
      if (typeof cb === 'function') cb();
      resolve(conn);
    }).on('error', (err) => {
      spinner.stop('Failed to establish SSH connection:', err);
      reject(err);
      process.exit(1);
    }).connect({
      host: SSH_HOST,
      port: SSH_PORT,
      username: SSH_USERNAME,
      privateKey: SSH_KEYNAME ? fs.readFileSync(path.resolve(process.env.USERPROFILE, '.ssh', SSH_KEYNAME)) : undefined,
      password: SSH_PASS
    });
  });
};

async function sshDisconnect(conn, cb) {
  if (!conn) {
    if (cb && typeof cb === 'function') cb();
    return;
  }

  return new Promise((resolve, reject) => {
    spinner.start(`Closing SSH connection`);
    conn.on('close', () => {
      spinner.stop();
      if (cb && typeof cb === 'function') cb();
      resolve();
    }).on('error', (err) => {
      spinner.stop(`Error closing SSH connection: ${err.message}`);
      reject(err);
    }).end();
  });
}

// Run remote shell command
async function runRemote(conn, runner, disconnectOnComplete = false) {
  return new Promise((resolve, reject) => {
    spinner.start(runner.spinner);

    // Execute the remote command
    conn.exec(runner.cmd, { cwd: runner.cwd || '.' }, (err, stream) => {
      if (err) {
        spinner.stop(`Error: ${err.message}`);
        if (runner.fallback) runner.fallback(err);
        reject(err);
        return;
      }

      let stdout = '';
      let stderr = '';

      // Capture standard output
      stream.on('data', (data) => {
        stdout += data.toString();
      });

      // Capture standard error output
      stream.stderr.on('data', (data) => {
        stderr += data.toString();
      });

      // Handle command completion
      stream.on('close', async (code) => {
        if (code !== 0) {
          const error = new Error(stderr.trim() || 'Remote command execution failed');
          spinner.stop(`Error: ${error.message}`);
          if (runner.fallback) await runner.fallback(error);
          reject(error);
        } else {
          spinner.stop(); // Stop the spinner normally if the command succeeded
          if (runner.callback) await runner.callback(stdout.trim());
          resolve(stdout.trim());
        }

        // Disconnect from the SSH server if specified
        if (disconnectOnComplete) {
          conn.end();
        }
      });
    });
  });
}

// Check if remote path exists
async function checkIfRemoteExists(conn, dest) {
  return new Promise((resolve, reject) => {
    spinner.start(`Checking if "${dest}" exists`);

    conn.sftp((err, sftp) => {
      if (err) {
        spinner.stop(`Failed to start SFTP session: ${err.message}`);
        return reject(err);
      }

      // Use lstat to not follow symlinks (similar to `lstat` in Unix)
      // If you want to follow symlinks, you can use `sftp.stat` instead
      sftp.lstat(dest, (err, stats) => {

        if (err) {
          // If the error code indicates that the file or directory does not exist
          if (err.code === 2 || err.code === 'ENOENT') {
            spinner.stop();
            resolve(false); // Path does not exist
          } else {
            spinner.stop(err);
            reject(err); // Some other error occurred
          }
        } else {
          spinner.stop();
          resolve(true); // Path exists
        }
      });
    });
  });
}

// Download remote file
async function getRemoteFile(conn, src, target, cb, fb) {
  return new Promise((resolve, reject) => {
    const msg = `Downloading ${src} to ${target}`;
    spinner.start(msg);

    conn.sftp(async (err, sftp) => {
      if (err) {
        spinner.stop(`Failed to start SFTP session: ${err.message}`);
        if (typeof fb === 'function') fb(err);
        return reject(err);
      }

      sftp.stat(src, async (err, stats) => {
        if (err) {
          spinner.stop(`Failed to retrieve file stats: ${err.message}`);
          if (typeof fb === 'function') fb(err);
          return reject(err);
        }

        const totalSize = stats.size;
        let downloadedBytes = 0;

        const readStream = sftp.createReadStream(src, { highWaterMark: 1024 * 1024 });
        const writeStream = fs.createWriteStream(target);

        readStream.on('data', (chunk) => {
          downloadedBytes += chunk.length;
          const percentage = ((downloadedBytes / totalSize) * 100).toFixed(2);
          spinner.updateMessage(`${msg}: ${percentage}%`);
        });

        readStream.on('error', (err) => {
          spinner.stop(`Read stream error: ${err.message}`);
          if (typeof fb === 'function') fb(err);
          reject(err);
        });

        writeStream.on('error', (err) => {
          spinner.stop(`Write stream error: ${err.message}`);
          if (typeof fb === 'function') fb(err);
          reject(err);
        });

        writeStream.on('finish', () => {
          spinner.stop();
          if (typeof cb === 'function') cb();
          resolve();
        });

        readStream.pipe(writeStream);
      });
    });
  });
}

// Remove remote file
async function removeRemoteFile(conn, remotePath, cb, fb) {
  return new Promise((resolve, reject) => {
    spinner.start(`Removing ${remotePath}`);

    conn.sftp((err, sftp) => {
      if (err) {
        spinner.stop(`Failed to start SFTP session: ${err.message}`);
        if (fb && typeof fb === 'function') fb();
        return reject(err);
      }

      sftp.unlink(remotePath, (err) => {
        if (err) {
          spinner.stop(`Failed to remove file ${remotePath}: ${err.message}`);
          if (fb && typeof fb === 'function') fb();
          reject(err);
        } else {
          spinner.stop();
          if (cb && typeof cb === 'function') cb();
          resolve();
        }
      });
    });
  });
}

// Upload file
async function uploadFile(conn, src, target, cb, fb) {
  return new Promise((resolve, reject) => {

    const msg = `Uploading ${src} to ${target}`;
    spinner.start(msg);

    fs.stat(src, (err, stats) => {
      if (err) {
        spinner.stop(`Failed to retrieve file stats: ${err.message}`);
        if (typeof fb === 'function') fb(err);
        return reject(err);
      }

      const totalSize = stats.size;
      let transferredBytes = 0;

      conn.sftp(async (err, sftp) => {
        if (err) {
          spinner.stop(`Failed to start SFTP session: ${err.message}`);
          if (typeof fb === 'function') fb(err);
          return reject(err);
        }

        const options = {
          step: (totalTransferred, chunk, total) => {
            transferredBytes = totalTransferred;
            const percentage = ((transferredBytes / totalSize) * 100).toFixed(2);
            spinner.updateMessage(`${msg}: ${percentage}%`);
          },
        };

        sftp.fastPut(src, target, options, (err) => {
          if (err) {
            spinner.stop(`Upload failed: ${err.message}`);
            if (typeof fb === 'function') fb(err);
            reject(err);
          } else {
            spinner.stop();
            if (typeof cb === 'function') cb();
            resolve();
          }
        });
      });
    });
  });
}

// Create remote folder
async function createRemoteDir(conn, remoteDirPath, cb) {
  return new Promise((resolve, reject) => {
    spinner.start(`Creating directory ${remoteDirPath}`);

    conn.sftp(async (err, sftp) => {
      if (err) {
        spinner.stop(`Failed to start SFTP session: ${err.message}`);
        return reject(err);
      }

      // Recursive function to check and create directories
      const mkdirRecursive = async (path) => {
        const parts = path.split('/').filter(p => !!p);
        let current = '';
        for (let part of parts) {
          current += '/' + part; // Constructing the path incrementally

          try {
            // Check if the directory exists
            await new Promise((resolve, reject) => {
              sftp.stat(current, (err, stats) => {
                if (err || !stats.isDirectory()) {
                  // Directory does not exist or error in checking; attempt to create
                  sftp.mkdir(current, (err) => {
                    if (err) {
                      reject(err); // Fail on error except if directory already exists
                    } else {
                      resolve(); // Directory created successfully
                    }
                  });
                } else {
                  resolve(); // Directory already exists, no action needed
                }
              });
            });
          } catch (err) {
            spinner.stop(`Failed to create directory ${current}: ${err.message}`);
            throw err; // Rethrow to be caught by the outer try-catch
          }
        }
      };

      try {
        await mkdirRecursive(remoteDirPath);
        spinner.stop();
        if (cb && typeof cb === 'function') cb();
        resolve();
      } catch (err) {
        reject(err);
      }
    });
  });
}

/**
 * LOCAL FILESYSTEM OPERATIONS
 */

// Create archive
async function pack(srcPath, destPath, cb) {

  const totalSize = await calculateDirSize(srcPath);
  const totalSizeMB = (totalSize / 1024 / 1024).toFixed(2);
  let processedSize = 0;

  return new Promise((resolve, reject) => {
    const msg = `Creating archive of ${srcPath}. Total size: ${totalSizeMB} Mb`;
    spinner.start(msg);

    const output = fs.createWriteStream(destPath);
    const archive = archiver('tar', { gzip: true });

    output.on('close', () => {
      spinner.updateMessage(msg + `. Compressed size: ${(archive.pointer() / 1024 / 1024).toFixed(2)} Mb`);
      spinner.stop();
      (typeof cb === 'function') && cb();
      resolve();
    });

    output.on('end', () => {
      spinner.stop('Data has been drained');
    });

    archive.on('warning', (err) => {
      spinner.stop(err);
      reject(err);
    });

    archive.on('error', (err) => {
      spinner.stop(err);
      reject(err);
    });

    archive.on('progress', (progress) => {
      const percent = (progress.fs.processedBytes / totalSize * 100).toFixed(2);
      spinner.updateMessage(`${msg} - ${percent}%`);
    });

    archive.pipe(output);
    archive.directory(srcPath, false);
    archive.finalize();
  });
}

// Decompress archive
async function unpack(localArchivePath, absoluteLocalDest, cb) {
  return new Promise((resolve, reject) => {
    const cmd = `tar -xf ${localArchivePath} -C "${absoluteLocalDest}"`;
    const msg = `Unpacking ${localArchivePath} to ${absoluteLocalDest}`;

    spinner.start(msg);

    runLocal({
      cmd,
      spinner: msg,
      callback: (error) => {
        if (error) {
          spinner.stop(`Failed: ${error}`);
          return reject(error);
        }

        spinner.stop();
        if (typeof cb === 'function') cb();
        resolve();
      }
    });
  });
}

// Remove local files & folders
async function removeLocal(paths, cb) {
  return new Promise(async (resolve, reject) => {
    let formattedPaths = Array.isArray(paths) ? paths.join(', ') : paths;
    const msg = `Removing ${formattedPaths}`;
    spinner.start(msg);

    try {
      await del(paths);
      spinner.stop();
      typeof cb === 'function' && cb();
      resolve(); // Resolve the promise upon successful deletion
    } catch (error) {
      spinner.stop(`${msg} Failed: ${error.message}`);
      reject(error); // Reject the promise if an error occurs
    }
  });
}

async function createLocalDir(dir, cb) {
  spinner.start(`Creating ${dir} folder`);

  try {
    await fs.ensureDir(dir);
    await new Promise(resolve => setTimeout(resolve, 300));
    spinner.stop();
    (typeof cb === 'function') && cb();
  } catch (error) {
    spinner.stop(error);
    process.exit(1);
  }
}

/**
 * COMMAND RUNNERS
 */

// onError handler
const onError = {
  errorHandler: notify.onError({ message: "Error: <%= error.message %>" })
}

// Messages in console
const log = {
  info: (msg) => {
    console.log(clc.yellow(msg));
  },

  error: (msg) => {
    console.log(clc.red.bold(msg));
  },

  success: (msg) => {
    console.log(clc.green.bold(msg));
  },
}

const spinner = {
  loader: null,
  message: '',
  start: (msg, cb = () => { }) => {
    const init = async () => {
      if (!this.loader) {
        this.message = msg;
        this.loader = new Spinner(msg);
        this.loader.start();
      }
    }

    init().then(() => {
      setTimeout(cb, 200);
    });
  },
  stop: (error = null) => {
    if (this.loader) {
      this.loader.stop();
      if (!error) {
        log.success('  ✓ ' + this.message);
      } else {
        log.error(error);
      }
      this.loader = null;
    }
  },
  updateMessage: (msg) => {
    if (this.loader) {
      this.message = msg;
      this.loader.message(msg);
    }
  }
}

// Prompt
function prompt({ message, callback, fallback = () => { process.exit(1) } }) {
  (async () => {

    const response = await prompts({
      type: 'confirm',
      name: 'value',
      initial: true,
      message
    });

    if (response.value === true) {
      callback();
    } else {
      fallback();
    }
  })();
}

// Exec local shell command
async function runLocal(runner) {
  return new Promise((resolve, reject) => {
    spinner.start(runner.spinner); // Start the spinner with the provided message immediately

    cp.exec(runner.cmd, (error, stdout, stderr) => {
      if (error) {
        spinner.stop(stderr);
        if (runner.fallback) runner.fallback(stderr); // Call the fallback if provided
        reject(error); // Reject the promise on error
      } else {
        spinner.stop(); // Stop the spinner once the command execution is complete
        if (runner.callback) runner.callback(stdout); // Call the callback if provided
        resolve(stdout); // Resolve the promise with the command's stdout
      }
    });
  });
}

// Spawn shell command
async function spawnCmd(cmd, options, cb = () => { }, fb = () => { }) {
  return new Promise((resolve, reject) => {
    const spawn = cp.spawn(cmd, [], options);

    spawn.on('error', (error) => {
      log.error(error);
      fb();
      reject(error); // Reject the promise on error
    });

    spawn.on('close', (code) => {
      if (code !== 0) {
        const error = new Error(`Command exited with code ${code}`);
        log.error(error);
        fb();
        reject(error); // Reject the promise on non-zero exit code
      } else {
        cb();
        resolve(); // Resolve the promise on successful execution
      }
    });
  });
};



/**
 * VALIDATORS & GENERATORS
 */

// Get env params
function getEnv(env) {

  let filePath = path.resolve(process.cwd(), `.env.${env}`);
  let envBuffer = fs.readFileSync(filePath);
  let creds = parseBuffer(envBuffer);
  creds.sudo = (creds.SSH_SUDO) ? 'sudo ' : '';

  return creds;
}

// Check if local path exists
async function localPathExists(path) {
  return await fs.pathExists(path);
}

// Check if glob pattern exists
function globesExist(globPattern) {
  return glob.sync(globPattern).length > 0;
}

// Remove-Restore files with defined extensions in stream
function filterStream(extensions) {

  extensions = extensions.split('|');

  const extSet = new Set(extensions.map(ext => '.' + ext));
  const skippedFiles = [];

  return {
    skip: new Transform({
      objectMode: true,
      transform(file, encoding, callback) {
        if (extSet.has(file.extname)) {
          skippedFiles.push(file);
        } else {
          this.push(file);
        }
        callback();
      }
    }),
    restore: new Transform({
      objectMode: true,
      transform(file, encoding, callback) {
        this.push(file);
        callback();
      },
      flush(callback) {
        skippedFiles.forEach(file => this.push(file));
        callback();
      }
    })
  };
};

// Generate safe password
function generateSafePass(length = 16) {
  const characters = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789_-';
  let password = '';
  for (let i = 0; i < length; i++) {
    const randomIndex = Math.floor(Math.random() * characters.length);
    password += characters[randomIndex];
  }
  return password;
}

// Create date/timestamp for archive/dump
function getTimeStamp() {
  let D = new Date(Date.now());
  let month = D.getMonth() + 1; // Month is zero-based, so need to add 1

  // Convert single-digit values to double-digit format by prefixing them with zero
  let paddedMonth = month < 10 ? "0" + month : month;
  let paddedDate = D.getDate() < 10 ? "0" + D.getDate() : D.getDate();
  let paddedHours = D.getHours() < 10 ? "0" + D.getHours() : D.getHours();
  let paddedMinutes = D.getMinutes() < 10 ? "0" + D.getMinutes() : D.getMinutes();
  let paddedSeconds = D.getSeconds() < 10 ? "0" + D.getSeconds() : D.getSeconds();

  let timestamp = D.getFullYear() + "-" + paddedMonth + "-" + paddedDate
    + "-[" + paddedHours + "-" + paddedMinutes + "-" + paddedSeconds + "]";

  return timestamp;
}

// Fix double|single quotes for env params
function parseBuffer(src) {

  const NEWLINES_MATCH = /\r\n|\n|\r/;
  const NEWLINE = '\n';
  const RE_INI_KEY_VAL = /^\s*([\w.-]+)\s*=\s*(.*)?\s*$/;
  const RE_NEWLINES = /\\n/g;
  const obj = {};

  src.toString().split(NEWLINES_MATCH).forEach(line => {

    // matching "KEY" and "VAL" in "KEY=VAL"
    const keyValueArr = line.match(RE_INI_KEY_VAL);
    // matched?
    if (keyValueArr != null) {
      const key = keyValueArr[1];

      // default undefined or missing values to empty string
      let val = (keyValueArr[2] || '');
      const end = val.length - 1;
      const isDoubleQuoted = val[0] === '"' && val[end] === '"';
      const isSingleQuoted = val[0] === "'" && val[end] === "'";

      // if single or double quoted, remove quotes
      if (isSingleQuoted || isDoubleQuoted) {
        val = val.substring(1, end);

        // if double quoted, expand newlines
        if (isDoubleQuoted) {
          val = val.replace(RE_NEWLINES, NEWLINE);
        }
      } else {
        //  remove surrounding whitespace
        val = val.trim();
      }
      obj[key] = val;
    }
  });

  return obj;
}

// Common function to validate required arguments
async function validateArgs(args, required = []) {
  try {
    return await new Promise((resolve, reject) => {
      try {
        for (const argName of required) {
          if (!args[argName]) {
            throw new Error(`"--${argName}" is required!`);
          }
        }

        if ((args.from && args.to) && (args.from === args.to)) {
          throw new Error('"--from" and "--to" arguments cannot be the same.');
        }

        // If validations passed, resolve the promise
        resolve();
      } catch (error) {
        log.error(error.message);
        reject(error); // Reject the promise with the error object
      }
    });
  } catch (error_1) {
    process.exit(1); // Exit process on error
  }
};

// Check if env file exists
async function checkEnv(envs) {
  // Convert single string input to an array
  envs = Array.isArray(envs) ? envs : [envs];

  // Create an array of promises, one for each environment
  const checks = envs.map(async (env) => {
    let filePath = path.resolve(process.cwd(), `.env.${env}`);

    try {
      // Attempt to read the file
      await fs.promises.readFile(filePath, 'utf8');
    } catch (error) {
      // If an error occurs, throw a new error
      throw new Error(`Failed to read environment file "${env}": ${error.message}`);
    }
  });

  // Use Promise.all to wait for all promises to settle (resolve or reject)
  try {
    await Promise.all(checks);
  } catch (error) {
    log.error(error.message);
    process.exit(1);
  }
}

// Helper function to calculate the total size of a directory
async function calculateDirSize(dirPath) {
  let totalSize = 0;

  async function readDir(dirPath) {
    const files = fs.readdirSync(dirPath);

    for (const file of files) {
      const filePath = path.join(dirPath, file);
      const stats = fs.statSync(filePath);

      if (stats.isDirectory()) {
        await readDir(filePath);
      } else {
        totalSize += stats.size;
      }
    }
  }

  await readDir(dirPath);
  return totalSize;
}

module.exports = { cfg, onError, log, spinner, localPathExists, runLocal, runRemote, checkIfRemoteExists, createRemoteDir, removeRemoteFile, uploadFile, getRemoteFile, sshConnect, sshDisconnect, removeLocal, createLocalDir, prompt, getEnv, getTimeStamp, globesExist, filterStream, validateArgs, checkEnv, generateSafePass, spawnCmd, args, pack, unpack, path, fs };