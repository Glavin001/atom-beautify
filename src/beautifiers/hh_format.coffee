###
Requires http://hhvm.com/
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class HhFormat extends Beautifier
  name: "hh_format"
  link: "http://hhvm.com/"

  options:
    PHP: true

  beautify: (text, language, options) ->
    @run("hh_format", [
      @tempFile("input", text)
      ]).then((output) =>
        # hh_format can exit with status 0 and no output for some files which
        # it doesn't format.  In that case we just return original text.
        if output.trim() then output else text
      )
