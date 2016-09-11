"use strict"
Beautifier = require('./beautifier')

module.exports = class SassConvert extends Beautifier
  name: "SassConvert"
  link: "http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax"

  options:
    # TODO: Add support for options
    CSS: false
    Sass: false
    SCSS: false

  beautify: (text, language, options, context) ->
    lang = language.toLowerCase()

    @run("sass-convert", [
      @tempFile("input", text),
      "--from", lang, "--to", lang
    ])
