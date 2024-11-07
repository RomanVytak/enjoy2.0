const { cfg, log, globesExist, filterStream } = require('../utils');
const { task, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();

// Get bitmap images SHARP optimization config
const getFormats = (env) => {

  const outputTypes = [cfg.images.outputTypes];

  const defaultFormats = [
    // {
    //   width: (metadata) => metadata.width,
    //   sharp: { failOnError: false },
    // },
    ...outputTypes.map((format) => ({
      width: (metadata) => metadata.width,
      format,
      [`${format}Options`]: cfg.images[env][format],
      sharp: { failOnError: false },
    }))
  ];

  const extendedFormats = cfg.images.sizes.flatMap((size) =>
    outputTypes.flatMap((format) => ({
      width: size,
      format,
      [`${format}Options`]: cfg.images[env][format],
      rename: { suffix: `-${size}` },
      sharp: { failOnError: false },
    }))
  );

  return [...defaultFormats, ...extendedFormats];
}

// Copy SVG images
const copySVG = (cb) => {

  if (!globesExist(cfg.path.src.svg)) {
    return cb();
  }

  return src(cfg.path.src.svg)
    .pipe(dest(cfg.path.build.img))
    .on('finish', () => log.success(`Copied SVG (development)`))
}

// Copy all images
const copyImg = (cb) => {

  if (!globesExist(cfg.path.src.img)) {
    return copySVG(cb);
  }

  return src(cfg.path.src.img)
    .pipe(dest(cfg.path.build.img))
    .on('finish', () => {
      log.success(`Copied bitmap images (development)`);
      copySVG(cb);
    })
}

// Сompress SVG images
const compileSVG = (cb, env) => {

  if (!globesExist(cfg.path.src.svg)) {
    return cb();
  }

  return src(cfg.path.src.svg)
    .pipe(gp.plumber(cfg.onError))
    .pipe(gp.svgmin({
      multipass: true,
      full: true,
      plugins: [
        'removeComments',
        'removeDoctype',
        'removeXMLProcInst',
        'convertPathData'
      ]
    }))
    .pipe(dest(cfg.path.build.img))
    .on('finish', () => log.success(`Optimized SVG (${env})`))
}

// Compress / resize all images
const compileImg = (cb, env) => {

  if (!globesExist(cfg.path.src.img)) {
    return compileSVG(cb, env);
  }

  const filter = filterStream(cfg.images.skipConvert);

  return src(cfg.path.src.img)
    .pipe(gp.plumber(cfg.onError))
    .pipe(filter.skip)
    .pipe(gp.sharpResponsive({
      formats: getFormats(env),
      includeOriginalFile: false
    }))
    .pipe(filter.restore)
    .pipe(dest(cfg.path.build.img))
    .on('finish', () => {
      log.success(`Optimized bitmap images (${env})`);
      compileSVG(cb, env);
    });
};

module.exports = () => {
  task('svg', copySVG);
  task('build:svg', (cb) => compileSVG(cb, 'production'));
  task('img', copyImg);
  task('build:img', (cb) => compileImg(cb, 'production'));
};