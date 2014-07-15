gutil = require 'gulp-util'

fatalLevel = require('yargs').argv.fatal

ERROR_LEVELS = ['error', 'warning']

isFatal = (level) ->
  ERROR_LEVELS.indexOf(level) <= ERROR_LEVELS.indexOf(fatalLevel || 'error')

handleError = (level, error) ->
  gutil.log(gutil.colors.red(error.message))
  process.exit(1) if isFatal(level)

module.exports =
  error: (error) ->
    handleError.call(this, 'error', error)

  warning: (error) ->
    handleError.call(this, 'warning', error)
