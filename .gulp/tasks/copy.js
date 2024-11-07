const { cfg, log, globesExist } = require('../utils');
const { task, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();

const copy = (cb) => {

  if (!globesExist(cfg.path.src.copy)) {
    return cb();
  }

  return src(cfg.path.src.copy, { base: cfg.srcBase })
    .pipe(gp.plumber(cfg.onError))
    .pipe(dest(cfg.path.build.assets))
    .on('data', (file) => log.info(`Copied: ${file.path}`))
    .on('finish', () => log.success(`Assets copied`));
}

module.exports = () => {
  task('copy', (cb) => copy(cb));
};