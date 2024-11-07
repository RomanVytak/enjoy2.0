const { cfg, log, globesExist, removeLocal } = require('../utils');
const { task, src, dest, series } = require('gulp');
const gp = require('gulp-load-plugins')();

// Clean fonts folder (required for header content update)
const cleanFonts = (cb) => {
  globesExist(cfg.path.build.fonts) ? removeLocal(cfg.path.build.fonts, cb) : cb();
};

// Convert ttf to woff2 | Copy woff2 to fonts
const processFonts = (cb) => {

  if (!globesExist(cfg.path.src.fonts)) {
    return cb();
  }

  return src(cfg.path.src.fonts)
    .pipe(gp.plumber(cfg.onError))
    .pipe(gp.if(file => (file.extname === '.ttf' ? (file.wasTTF = true) : false), gp.ttf2woff2()))
    .pipe(dest(cfg.path.build.fonts))
    .on('data', file => {
      log.info(file.wasTTF ? `Converted: ${file.path}` : `Copied: ${file.path}`);
    })
    .on('finish', () => log.success('Fonts processed!'));
}

// Inject fonts <preload> in WP header
const preloadFonts = (cb) => {
  const target = src(`${cfg.path.build.theme}header.php`, { allowEmpty: true });
  const fonts = src(`${cfg.path.build.fonts}*.woff2`, { read: false });

  return target
    .pipe(gp.plumber(cfg.onError))
    .pipe(gp.inject(fonts, {
      empty: true,
      name: 'fontsPreload',
      endtag: '<!-- endfontsPreload -->',
      transform: (filepath, file) => `<link rel="preload" as="font" type="font/woff2" href="<?php echo assets('fonts/${file.relative}');?>" crossorigin>`
    }))
    .pipe(gp.removeEmptyLines())
    .pipe(dest(`${cfg.path.build.theme}`))
    .on('finish', () => log.success('Fonts preload links updated!'));
}

module.exports = () => {
  task('fonts', processFonts);
  task('build:fonts', series(cleanFonts, processFonts, preloadFonts));
};
