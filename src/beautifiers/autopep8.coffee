###
Requires https://github.com/hhatto/autopep8
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Autopep8 extends Beautifier

  name: "autopep8"
  link: "https://github.com/hhatto/autopep8"
  executables: [
    {
      name: "autopep8"
      cmd: "autopep8"
      homepage: "https://github.com/hhatto/autopep8"
      installation: "https://github.com/hhatto/autopep8#installation"
      version: {
        parse: (text) ->
          try
            text.match(/autopep8 (\d+\.\d+\.\d+)/)[1]
          catch
            text.match(/autopep8 (\d+\.\d+)/)[1] + ".0"
        runOptions: {
          returnStdoutOrStderr: true
        }
      }
      docker: {
        image: "unibeautify/autopep8"
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

  beautify: (text, language, options, context = {}) ->
    @exe("autopep8").run([
        tempFile = @tempFile("input", text)
        "-i"
        ["--max-line-length", "#{options.max_line_length}"] if options.max_line_length?
        ["--indent-size","#{options.indent_size}"] if options.indent_size?
        ["--ignore","#{options.ignore.join(',')}"] if options.ignore?
      ])
      .then(=>
        if options.sort_imports
          filePath = context.filePath
          projectPath = atom?.project.relativizePath(filePath)[0]
          @exe("isort").run(["-sp", projectPath, tempFile])
      )
      .then(=> @readFile(tempFile))
