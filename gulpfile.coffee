gulp = require "gulp"
$    = do require "gulp-load-plugins"
browserSync = require "browser-sync"

gulp.task "jade", ->
  gulp.src "src/jade/*.jade"
    .pipe $.plumber
      errorHandler: $.notify.onError "Error: <%= error.message %>"
    .pipe $.jade
      pretty: true
    .pipe gulp.dest "dist"

gulp.task "babel", ->
  gulp.src "src/es6/*.es6"
    .pipe $.plumber
      errorHandler: $.notify.onError "Error: <%= error.message %>"
    .pipe $.babel()
    .pipe gulp.dest "dist/js"
    .pipe $.uglify()
    .pipe $.rename
      suffix: ".min"
      extname: ".js"
    .pipe gulp.dest "dist/js"

gulp.task "less", ->
  gulp.src "src/less/*.less"
    .pipe $.plumber
      errorHandler: $.notify.onError "Error: <%= error.message %>"
    .pipe $.pleeease
      less: true
    .pipe $.rename
      suffix: ".min"
      extname: ".css"
    .pipe gulp.dest "dist/css"

gulp.task "browser-sync", ->
  browserSync.init null,
    server:
      baseDir: "dist"

gulp.task "browser-sync-reload", ->
  browserSync.reload()

gulp.task "watch", ["babel", "jade", "less", "browser-sync"], ->
  gulp.watch "src/es6/*.es6", ["babel", "browser-sync-reload"]
  gulp.watch "src/jade/*.jade", ["jade", "browser-sync-reload"]
  gulp.watch "src/less/*.less", ["less", "browser-sync-reload"]

gulp.task "default", ["watch"]

