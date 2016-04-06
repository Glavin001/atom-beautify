###
Requires https://github.com/erniebrodeur/ruby-beautify
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class RubyBeautify extends Beautifier
  name: "Ruby Beautify"

  options: {
    Ruby:
      indent_size: true
      indent_char: true
  }

  beautify: (text, language, options) ->
    @run("rbeautify", [
      if options.indent_char is '\t' then "--tabs" else "--spaces"
      "--indent_count", options.indent_size
      @tempFile("input", text)
      ], help: {
        link: "https://github.com/erniebrodeur/ruby-beautify"
      })
