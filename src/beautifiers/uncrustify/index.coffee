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

  beautify: (text, language, options) ->
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
          # Expand Home Directory in Config Path
          configPath = expandHomeDir(configPath)
          # console.log(basePath);
          configPath = path.resolve(basePath, configPath)
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

      @run("uncrustify", [
        "-c"
        configPath
        "-f"
        @tempFile("input", text)
        "-o"
        outputFile = @tempFile("output", text)
        "-l"
        lang
        ], help: {
          link: "http://sourceforge.net/projects/uncrustify/"
        })
        .then(=>
          @readFile(outputFile)
        )
    )
