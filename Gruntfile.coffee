module.exports = (grunt) ->
  grunt.loadNpmTasks 'grunt-contrib-coffee'
  grunt.loadNpmTasks 'grunt-contrib-less'
  grunt.loadNpmTasks 'grunt-contrib-watch'

  grunt.initConfig
    watch:
      all:
        files: ['coffee/**/*.coffee', 'less/**/*.less']
        tasks: ['coffee', 'less']
        options:
          livereload: yes

    less:
      site:
        files:
          'css/style.css' : 'less/style.less'

    coffee:
      site:
        files:
          'js/main.js' : 'coffee/**/*.coffee'
