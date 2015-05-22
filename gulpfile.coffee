gulp    = require 'gulp'
peg     = require 'gulp-peg'
webpack = require 'gulp-webpack'

gulp.task 'default', ['build']

gulp.task 'build', ['peg', 'webpack']

gulp.task 'peg', ->
  gulp
    .src('src/tag-data.peg')
    .pipe(peg())
    .pipe(gulp.dest('src'))

gulp.task 'webpack', ->
  gulp
    .src('src/tag-data.js')
    .pipe(webpack(require('./webpack.config')))
    .pipe(gulp.dest('./'))
