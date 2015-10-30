###
Requires https://github.com/google/yapf
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Yapf extends Beautifier

  name: "yapf"

  options: {
    Python: false
  }

  beautify: (text, language, options) ->
    @run("yapf", [
      ["--style=pep8"]
      @tempFile("input", text)
      ], help: {
        link: "https://github.com/google/yapf"
      })
