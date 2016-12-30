###
Requires https://github.com/hhatto/autopep8
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Autopep8 extends Beautifier

  name: "autopep8"
  link: "https://github.com/hhatto/autopep8"

  options: {
    Python: true
  }

  beautify: (text, language, options) ->
    @run("autopep8", [
      tempFile = @tempFile("input", text)
      "-i"
      ["--max-line-length", "#{options.max_line_length}"] if options.max_line_length?
      ["--indent-size","#{options.indent_size}"] if options.indent_size?
      ["--ignore","#{options.ignore.join(',')}"] if options.ignore?
      ], help: {
        link: "https://github.com/hhatto/autopep8"
      })
      .then(=>
        if options.sort_imports
          @run("isort",
            [tempFile],
            help: {
              link: "https://github.com/timothycrosley/isort"
          })
          .then(=>
            @readFile(tempFile)
          )
        else
          @readFile(tempFile)
      )
