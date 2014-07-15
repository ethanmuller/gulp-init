module.exports = (gulp, cfg, env) ->
  errorHandler = require '../error-handler'
  sass = require 'gulp-sass'
  connect = require 'gulp-connect'
  minifyCSS = require 'gulp-minify-css'
  gulpif = require 'gulp-if'

  gulp.task "styles", ['clean-styles'], ->
    stream = gulp.src(cfg.paths.stylesIn + '**/*.scss')
      .pipe(sass().on 'error', (e) ->
        errorHandler.error(e)
        stream.end()
      )
      .pipe(gulpif((env is 'production'), minifyCSS()))
      .pipe(gulp.dest(cfg.paths.stylesOut))
      .pipe(connect.reload())
