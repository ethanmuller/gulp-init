module.exports = (gulp, cfg, env) ->
  coffee = require 'gulp-coffee'
  jasmine = require 'gulp-jasmine'
  errorHandler = require '../error-handler'
  plumber = require 'gulp-plumber'

  gulp.task 'tests', ->
    stream = gulp.src('tests/test.coffee')
      .pipe jasmine(verbose: true)
