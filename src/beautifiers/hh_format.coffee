###
Requires http://hhvm.com/
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class HhFormat extends Beautifier
  name: "hh_format"
  link: "http://hhvm.com/"

  options: {
    PHP: true
  }

  beautify: (text, language, options) ->
    @run("hh_format", [
      "-i",
      @tempFile("input", text)
      ])
