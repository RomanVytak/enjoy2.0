const { cfg, log, globesExist } = require('../utils');
const { task, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();

const compileJSON = (env, cb) => {
  if (!globesExist(cfg.path.src.json)) {
    return cb();
  }

  return src(cfg.path.src.json, { base: cfg.srcBase })
    .pipe(gp.if(env === 'production', gp.jsonMinify()))
    .pipe(dest(cfg.path.build.assets))
    .on('finish', () => log.success(`JSON processed for ${env}`));
};

module.exports = function () {
  task('json', (cb) => compileJSON('development', cb));
  task('build:json', (cb) => compileJSON('production', cb));
};
