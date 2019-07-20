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
    cwd = context.filePath and path.dirname context.filePath
    @exe("black").run(["-"], {
      cwd: cwd
      onStdin: (stdin) ->
        stdin.end text
    })
    .then((formattedText) =>
      if options.sort_imports
        projectPath = atom?.project.relativizePath(context.filePath)[0]
        @exe("isort").run(
          ["-sp", projectPath, tempFile = @tempFile("formatted", formattedText)]
        ).then(=>
          @readFile(tempFile)
        )
      else
        return formattedText
    )
