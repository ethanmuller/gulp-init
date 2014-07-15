module.exports = (gulp, cfg, env) ->
  sass = require 'gulp-sass'
  connect = require 'gulp-connect'
  errorHandler = require '../error-handler'

  gulp.task "styles", ['clean-styles'], ->
    stream = gulp.src(cfg.paths.stylesIn + '**/*.scss')
      .pipe(sass().on 'error', (e) ->
        errorHandler.error(e)
        stream.end()
      )
      .pipe(gulp.dest(cfg.paths.stylesOut))
      .pipe(connect.reload())
