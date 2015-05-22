gulp    = require 'gulp'
peg     = require 'gulp-peg'

gulp.task 'default', ['build']

gulp.task 'build', ['peg']

gulp.task 'peg', ->
  gulp
    .src('src/tag-data.peg')
    .pipe(peg())
    .pipe(gulp.dest('src'))
