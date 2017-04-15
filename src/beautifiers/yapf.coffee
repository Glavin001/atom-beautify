###
Requires https://github.com/google/yapf
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Yapf extends Beautifier

  name: "yapf"
  link: "https://github.com/google/yapf"
  isPreInstalled: false

  options: {
    Python: false
  }

  beautify: (text, language, options) ->
    @run("yapf", [
      "-i"
      tempFile = @tempFile("input", text)
      ], help: {
        link: "https://github.com/google/yapf"
      }, ignoreReturnCode: true)
      .then(=>
        if options.sort_imports
          editor = atom.workspace.getActiveTextEditor()
          filePath = editor.getPath()
          projectPath = atom.project.relativizePath(filePath)[0]

          @run("isort",
            ["-sp", projectPath, tempFile],
            help: {
              link: "https://github.com/timothycrosley/isort"
          })
          .then(=>
            @readFile(tempFile)
          )
        else
          @readFile(tempFile)
      )
