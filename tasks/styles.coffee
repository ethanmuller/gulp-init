module.exports = (gulp, cfg, env) ->
  sass = require 'gulp-sass'

  gulp.task "styles", ['clean-styles'], ->
    gulp.src(cfg.paths.stylesIn + '**/*.scss')
      .pipe(sass())
      .pipe(gulp.dest(cfg.paths.stylesOut))
