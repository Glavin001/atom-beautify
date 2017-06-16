###
Requires http://uncrustify.sourceforge.net/
###
"use strict"
Beautifier = require('../beautifier')
cfg = require("./cfg")
path = require("path")
expandHomeDir = require('expand-home-dir')
_ = require('lodash')

module.exports = class Uncrustify extends Beautifier
  name: "Uncrustify"
  link: "https://github.com/uncrustify/uncrustify"
  executables: [
    {
      name: "Uncrustify"
      cmd: "uncrustify"
      homepage: "http://uncrustify.sourceforge.net/"
      installation: "https://github.com/uncrustify/uncrustify"
      version: {
        parse: (text) ->
          try
            v = text.match(/uncrustify (\d+\.\d+)/)[1]
          catch error
            @error(error)
            v = text.match(/Uncrustify-(\d+\.\d+)/)[1] if not v?
          if v
            return v + ".0"
      }
      docker: {
        image: "unibeautify/uncrustify"
      }
    }
  ]

  options: {
    Apex: true
    C: true
    "C++": true
    "C#": true
    "Objective-C": true
    D: true
    Pawn: true
    Vala: true
    Java: true
    Arduino: true
  }

  beautify: (text, language, options, context) ->
    fileExtension = context.fileExtension

    uncrustify = @exe("uncrustify")
    # console.log('uncrustify.beautify', language, options)
    return new @Promise((resolve, reject) ->
      configPath = options.configPath
      unless configPath
        # No custom config path
        cfg options, (error, cPath) ->
          throw error if error
          resolve cPath
      else
        # Has custom config path
        editor = atom.workspace.getActiveTextEditor()
        if editor?
          basePath = path.dirname(editor.getPath())
          projectPath = atom.workspace.project.getPaths()[0]
          # console.log(basePath);
          # Expand Home Directory in Config Path
          expandedConfigPath = expandHomeDir(configPath)
          configPath = path.resolve(projectPath, expandedConfigPath)
          resolve configPath
        else
          reject(new Error("No Uncrustify Config Path set! Please configure Uncrustify with Atom Beautify."))
    )
    .then((configPath) =>
      # Select Uncrustify language
      lang = "C" # Default is C
      switch language
        when "Apex"
          lang = "Apex"
        when "C"
          lang = "C"
        when "C++"
          lang = "CPP"
        when "C#"
          lang = "CS"
        when "Objective-C", "Objective-C++"
          lang = "OC+"
        when "D"
          lang = "D"
        when "Pawn"
          lang = "PAWN"
        when "Vala"
          lang = "VALA"
        when "Java"
          lang = "JAVA"
        when "Arduino"
          lang = "CPP"

      uncrustify.run([
        "-c"
        configPath
        "-f"
        @tempFile("input", text, fileExtension and ".#{fileExtension}")
        "-o"
        outputFile = @tempFile("output", text, fileExtension and ".#{fileExtension}")
        "-l"
        lang
        ])
        .then(=>
          @readFile(outputFile)
        )
    )
