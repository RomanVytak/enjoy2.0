const cfg = require('./../config.json');

// Ensure that essential properties exist in config.json
if (!cfg.themeName || !cfg.appBase || !cfg.srcBase || !cfg.images) {
  throw new Error('Essential properties missing in config.json');
}

const backupPath = `.backup`;
const themePath = `wp-content/themes/${cfg.themeName}`;
const uploadsPath = `wp-content/uploads`;
const assetsPath = `${cfg.appBase}/${themePath}/assets`;

const buildPath = (type) => `${assetsPath}/${type}/`;

const srcPaths = {
  css: `${cfg.srcBase}/scss/**/*.scss`,
  js: `${cfg.srcBase}/js/**/*.js`,
  img: `${cfg.srcBase}/img/**/*.+(${cfg.images.inputTypes})`,
  svg: `${cfg.srcBase}/img/**/*.svg`,
  tpl: `${cfg.srcBase}/templates/**/*.*`,
  fonts: `${cfg.srcBase}/fonts/**/*.+(ttf|woff2)`,
  json: `${cfg.srcBase}/**/*.+(*)json`,
  copy: `${cfg.srcBase}/**/*.+(${cfg.copyAssets})`,
};

cfg.path = {
  theme: themePath,
  uploads: uploadsPath,
  backup: backupPath,
  src: srcPaths,
  watch: { ...srcPaths },
  build: {
    theme: `${cfg.appBase}/${themePath}/`,
    assets: assetsPath,
    css: buildPath('css'),
    js: buildPath('js'),
    img: buildPath('img'),
    fonts: buildPath('fonts')
  }
};

module.exports = cfg;