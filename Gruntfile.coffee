module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-coffeeify'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    watch:
      all:
        files: ['coffee/**/*.coffee', 'less/**/*.less']
        tasks: ['coffeeify', 'less']
        options:
          livereload: yes


    less:
      site:
        files:
          'css/style.css' : 'less/style.less'

    coffeeify:
      site:
        files: [
          src: 'coffee/**/*.coffee'
          dest: 'js/main.js'
        ]
