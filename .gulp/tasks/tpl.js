const cfg = require('../config');
const { task, src, dest } = require('gulp');
const { log } = require('../utils');
const gp = require('gulp-load-plugins')();

const tpl = (env) => {

  return src(cfg.path.src.tpl, { base: cfg.srcBase })
    .pipe(gp.plumber(cfg.onError))
    .pipe(dest(cfg.path.build.theme))
    .on('end', () => {
      log.success(`Compiled templates (${env})`)
    });
}

module.exports = () => {
  task('tpl', () => tpl('development'));
  task('build:tpl', () => tpl('production'));
};