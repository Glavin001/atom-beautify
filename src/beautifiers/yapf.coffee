###
Requires https://github.com/google/yapf
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Yapf extends Beautifier

  name: "yapf"

  # I decide to support no options since yapf is configured using its
  # own configure file.
  options: {
    Python: false
  }

  beautify: (text, language, options) ->
    # console.log('yapf', options, text, language)
    @run("yapf", [
      ["--style=pep8"]
      @tempFile("input", text)
      ], help: {
        link: "https://github.com/google/yapf"
      })
