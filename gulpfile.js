const { task, watch, series, parallel } = require('gulp');
const { cfg, fs, removeLocal } = require('./.gulp/utils');

// Tasks list
const tasks = ['init', 'css', 'js', 'tpl', 'json', 'fonts', 'img', 'db', 'ssh', 'copy'];

// Dev tasks
const devTasks = ['tpl', 'css', 'js', 'json', 'img', 'svg', 'fonts'];

// Build tasks
const buildTasks = ['build:tpl', 'build:css', 'build:js', 'build:json', 'build:img', 'build:fonts'];

// Copy tasks
const copyTasks = ['copy'];

tasks.forEach(task => require(`./.gulp/tasks/${task}`)());

// Clean assets
task('clean', (cb) => removeLocal([
  `app/${cfg.path.theme}/assets/**/*`,
  `app/${cfg.path.theme}/templates/**/*`,
], cb));

// Task to create the timestamp file
task('timestamp', (cb) => {
  const timestamp = new Date().toISOString().replace(/[-:T]/g, '').slice(0, 12);
  const filePath = `${cfg.path.build.theme}/.timestamp`;

  console.log(`Timestamp: ${timestamp}`);

  fs.ensureFile(filePath, () => {
    fs.writeFileSync(filePath, timestamp);
    cb();
  });
});

// Watch tasks
task('default', () => {

  // Keeps temporary environment variable in _env.scss
  const ignored = ['**/_env.scss'];

  Object.entries(cfg.path.watch).forEach(([key, path]) =>
    watch(path, { ignored }, series(key))
  );
});

// Dev task
task('dev', series('clean', 'timestamp', parallel(...copyTasks, ...devTasks)));

// Build task
task('build', series('clean', 'timestamp', parallel(...copyTasks, ...buildTasks)));

// Start task
task('start', series('dev', 'default'));

// Test task
task('cfg', (cb) => {
  console.log(cfg);
  cb();
});