const { cfg, log, globesExist, fs } = require('../utils');
const { task, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();

// SCSS Plugins
const sassEngine = require('gulp-sass')(require('sass'));
const autoPrefixer = require('autoprefixer');
const postcssImport = require('postcss-import');
const cssnano = require('cssnano');

// Setup postCSS plugins
const postcssPlugins = {
  development: [
    postcssImport,
    autoPrefixer,
  ],
  production: [
    postcssImport,
    autoPrefixer,
    cssnano({
      preset: ['advanced', {
        discardUnused: false, // keep for use fonts variables
      }]
    })
  ]
};

const compileCSS = (env) => {

  if (!globesExist(cfg.path.src.css)) {
    return cb();
  }

  const envFile = `./${cfg.srcBase}/scss/common/_env.scss`;
  const envContent = `$env: "${env}";`

  // Write environment variable to _env.scss
  fs.ensureFile(envFile, () => {
    fs.writeFileSync(envFile, envContent);
  });

  return src(cfg.path.src.css, { sourcemaps: true })
    .pipe(gp.plumber(cfg.onError))
    .pipe(sassEngine.sync().on('error', sassEngine.logError))
    .pipe(gp.postcss(postcssPlugins[env]).on('error', function (err) {
      log.error(err.toString());
      this.emit('end');
    }))
    .pipe(dest(cfg.path.build.css, { sourcemaps: '.' }))
    .on('finish', () => log.success(`CSS processed (${env})`));
};

module.exports = function () {
  task('css', () => compileCSS('development'));
  task('build:css', () => compileCSS('production'));
}

