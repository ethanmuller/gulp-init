module.exports = (gulp, cfg, env) ->
  exec = require('child_process').exec
  fs = require 'fs'

  fileExists = (file) ->
    try
      fs.lstatSync(file)
      return true
    catch e
      return false

  gulp.task 'pattern-lab', ->
    if fileExists 'build/'
      console.log 'there is a styleguide. cool.'
    else
      console.log 'AINT NO BUILD DIR'

    if fileExists 'build/styleguide'
      console.log 'there is a styleguide. cool.'
    else
      console.log 'AINT NO STYLEGUIDE DIR'
