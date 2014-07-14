module.exports = (gulp, cfg, env) ->
  concat = require 'gulp-concat'
  uglify = require 'gulp-uglify'
  gulpif = require 'gulp-if'
  bowerFiles = require 'main-bower-files'

  gulp.task 'bower-files', ['clean-vendor'], ->
    try
      gulp.src(bowerFiles())
        .pipe(concat('vendor.js'))
        .pipe(gulpif(env is 'production', uglify()))
        .pipe gulp.dest(cfg.paths.vendorOut)
    catch error
      console.log error.message
