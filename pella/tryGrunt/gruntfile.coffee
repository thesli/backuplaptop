module.exports =
  (grunt)->
    grunt.initConfig(
      pkg: grunt.file.readJSON("package.json")
      #configure a task
      coffee:
        compileJoined:
          options:
            join:true
          files:
            "output/vendor.js":["vendor/js/**/*.coffee"]
            "src/js/joined.js":["src/js/**/*.coffee"]
      jade:
        html:
          files:
            "output/views/": ["src/jade/*.jade","src/jade/**/*.jade"]
          options:
            pretty: true
            client: false
      watch:
        scripts:
          files:["src/js/**/*.coffee","vendor/js/**/*.coffee"]
          tasks:["coffee","concat"]
        css:
          files:["src/css/*.css"]
          tasks:["concat"]
        html:
          files:["src/jade/*.jade"]
          tasks:["jade"]
        options:
          livereload:true
      concat:
        js:
          src: ["vendor/js/**/*.js","src/js/**/*.js"]
          dest: "output/use.js"
        css:
          src:["vendor/css/**/*.css","src/css/**/*.css"]
          dest: "output/use.css"
    )

    #load a task
    taskToLoad = [
      "grunt-contrib-concat",
      "grunt-contrib-coffee",
      "grunt-contrib-watch",
      "grunt-jade",
    ]
    for t in taskToLoad
      grunt.loadNpmTasks(t)
    grunt.registerTask("default",["jade","watch"])
    #setup the workflow

