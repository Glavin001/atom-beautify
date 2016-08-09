###
Requires [formatR](https://github.com/yihui/formatR)
###
path = require("path")

"use strict"
Beautifier = require('../beautifier')

module.exports = class R extends Beautifier
  name: "R beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/r-beautifier/r-beautifier.r"

  options: {
    R: true
  }

  beautify: (text, language, options) ->
    r_beautifier = path.resolve(__dirname, "r-beautifier.r")
    @run("Rscript", [
      r_beautifier,
      @tempFile("input", text),
      '>',
      @tempFile("input", text)
      ])
