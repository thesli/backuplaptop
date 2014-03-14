module.exports =
  (grunt)->
    grunt.initConfig(
      pkg: grunt.file.readJSON("package.json")
    #configure a task
      coffee:
        compileJoined:
          options:
            join: true
          files:
            "app/js/use.js": ["_dev/coffee/*.coffee","_dev/coffee/**/*.coffee"]
            "app/server.js":["_dev/server.coffee"]
        glob_to_multiple:
          expand:true
          flatten:true          
          src:["_dev/coffee/*.coffee"]
          dest: "app/js/"
          ext: ".js"
      jade:
        html:
          files:
            "app/views/": ["_dev/jade/*.jade", "_dev/jade/**/*.jade"]
            "app/views/partials":["_dev/jade/partials/*.jade"]
          options:
            pretty: false
            client: false
      stylus:
        compile:
          options:
            paths: ["_dev/stylus/"]
          files:
            "app/css/combine.css": ["_dev/stylus/**/*.styl","_dev/stylus/*.styl"]
        compileTofile:
          expand:true
          flatten:true
          src:["_dev/stylus/*.styl"]
          dest:"app/css"
          ext:".css"
      watch:
        coffee:
          files:["_dev/coffee/**/*.coffee","_dev/server.coffee"]
          tasks:["coffee"]
        stylus:
          files:["_dev/stylus/**/*.styl"]
          tasks:["stylus"]
        jade:
          files:["_dev/jade/**/*.jade"]
          tasks:["jade"]
        scripts:
          files: ["_dev/vendor/js/**/*.js","_dev/vendor/js/*.js"]
          tasks: ["concat"]
        css:
          files: ["_dev/vendor/css/*.css"]
          tasks: ["concat"]
        options:
          livereload: true
      concat:
        js:
          src: ["_dev/vendor/js/core/*.js","_dev/vendor/js/depended/*.js"]
          dest: "app/vendor/js/use.js"
        css:
          src: ["_dev/vendor/css/**/*.css", "_dev/vendor/css/*.css"]
          dest: "app/vendor/css/combine.css"
    )

    #load a task
    taskToLoad = [
      "grunt-contrib-concat",
      "grunt-contrib-coffee",
      "grunt-contrib-watch",
      "grunt-contrib-stylus",
      "grunt-jade"
    ]
    for t in taskToLoad
      grunt.loadNpmTasks(t)
    grunt.registerTask("default", ["coffee","stylus","concat","jade","watch"])
#setup the workflow
