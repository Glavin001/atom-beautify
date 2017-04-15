###
Requires [formatR](https://github.com/yihui/formatR)
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')

module.exports = class R extends Beautifier
  name: "formatR"
  link: "https://github.com/yihui/formatR"
  isPreInstalled: false

  options: {
    R: true
  }

  beautify: (text, language, options) ->
    r_beautifier = path.resolve(__dirname, "formatR.r")
    @run("Rscript", [
      r_beautifier,
      options.indent_size,
      @tempFile("input", text),
      '>',
      @tempFile("input", text)
      ])
