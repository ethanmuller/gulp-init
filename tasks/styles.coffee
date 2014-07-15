module.exports = (gulp, cfg, env) ->
  sass = require 'gulp-sass'
  gutil = require 'gulp-util'
  connect = require 'gulp-connect'

  gulp.task "styles", ['clean-styles'], ->
    gulp.src(cfg.paths.stylesIn + '**/*.scss')
      .pipe sass()
        .on('error', (e) -> gutil.log gutil.colors.red(e.message))
        .on('error', gutil.beep)
         
      .pipe(gulp.dest(cfg.paths.stylesOut))
      .pipe(connect.reload())
