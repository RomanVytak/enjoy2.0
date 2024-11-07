const cfg = require('../config');
const { log, globesExist } = require('../utils');
const { task, src, dest } = require('gulp');
const gp = require('gulp-load-plugins')();
const webpackStream = require('webpack-stream');

const commonConfig = {
  externals: {
    jquery: 'jQuery'
  },
  entry: cfg.jsEntries.reduce((acc, curr) => {
    acc[curr] = `./${cfg.srcBase}/js/${curr}.js`;
    return acc;
  }, {}),
  output: {
    filename: '[name].js',
  },
  module: {
    rules: [
      {
        test: /\.m?js$/,
        exclude: /(node_modules|bower_components)/,
        use: {
          loader: 'babel-loader',
          options: {
            presets: ['@babel/preset-env'],
          },
        }
      },
    ]
  }
};

const devConfig = {
  ...commonConfig,
  mode: 'development',
  devtool: 'inline-source-map',
  cache: {
    type: 'filesystem',
  },
};

const prodConfig = {
  ...commonConfig,
  mode: 'production',
  devtool: 'source-map',
  cache: false,
}

const compileJS = (env, cb) => {

  if (!globesExist(cfg.path.src.js)) {
    return cb();
  }

  return src(cfg.path.src.js)
    .pipe(gp.plumber(cfg.onError))
    .pipe(webpackStream((env === 'development') ? devConfig : prodConfig))
    .pipe(dest(cfg.path.build.js))
    .on('end', () => log.success(`JS processed (${env})`));
}

module.exports = function () {

  task('js', (cb) => compileJS('development', cb));
  task('build:js', (cb) => compileJS('production', cb));
};