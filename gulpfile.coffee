gulp    = require 'gulp'
peg     = require 'gulp-peg'
webpack = require 'gulp-webpack'
rename  = require 'gulp-rename'

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

# webpack bundles dist/parser.js, so peg has to finish first
gulp.task 'build', gulp.series('peg', 'webpack')

gulp.task 'default', gulp.series('build')
