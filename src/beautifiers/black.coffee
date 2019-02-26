###
Requires [black](https://github.com/ambv/black)
###
"use strict"
Beautifier = require('./beautifier')
path = require('path')

module.exports = class Black extends Beautifier
  name: "black"
  link: "https://github.com/ambv/black"
  executables: [
    {
      name: "black"
      cmd: "black"
      homepage: "https://github.com/ambv/black"
      installation: "https://github.com/ambv/black#installation"
      version: {
        parse: (text) ->
          # Try to read beta values, eg "black, version 18.6b4" -> 18.6.4
          try
            text.match(/black, version (\d+\.\d+)/)[1] + "." + text.match(/b(\d+)$/)[1]
          catch
            text.match(/black, version (\d+\.\d+)/)[1] + ".0"
      }
    }
    {
      name: "isort"
      cmd: "isort"
      optional: true
      homepage: "https://github.com/timothycrosley/isort"
      installation: "https://github.com/timothycrosley/isort#installing-isort"
      version: {
        parse: (text) -> text.match(/VERSION (\d+\.\d+\.\d+)/)[1]
      }
    }
  ]

  options: {
    Python: true
  }

  beautify: (text, language, options, context) ->
    @exe("black").run([
        tempFile = @tempFile("input", text)
    ])
    .then(=>
        console.log tempFile
        if options.sort_imports
          console.log "sort imports"
          filePath = context.filePath
          projectPath = atom?.project.relativizePath(filePath)[0]
          @exe("isort").run(["-sp", projectPath, tempFile])
      )
    .then(=> @readFile(tempFile))
