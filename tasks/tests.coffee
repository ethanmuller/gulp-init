module.exports = (gulp, cfg, env) ->
  coffee = require 'gulp-coffee'
  jasmine = require 'gulp-jasmine'
  errorHandler = require '../error-handler'
  plumber = require 'gulp-plumber'

  gulp.task 'test', ->
    stream = gulp.src('specs/**/*Spec.coffee')
      .pipe jasmine(verbose: true)
