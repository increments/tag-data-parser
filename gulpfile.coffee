gulp    = require 'gulp'
peg     = require 'gulp-peg'
webpack = require 'gulp-webpack'
rename  = require 'gulp-rename'

gulp.task 'default', ['build']

gulp.task 'build', ['peg', 'webpack']

gulp.task 'peg', ->
  gulp
    .src('src/tag-data.peg')
    .pipe(peg())
    .pipe(rename('parser.js'))
    .pipe(gulp.dest('dist'))

gulp.task 'webpack', ->
  gulp
    .src('src/index.js')
    .pipe(webpack(require('./webpack.config')))
    .pipe(gulp.dest('./'))
