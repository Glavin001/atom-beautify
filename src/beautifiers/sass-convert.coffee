"use strict"
Beautifier = require('./beautifier')

module.exports = class SassConvert extends Beautifier
  name: "SassConvert"
  link: "http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax"
  executables: [
    {
      name: "SassConvert"
      cmd: "sass-convert"
      homepage: "http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax"
      installation: "http://sass-lang.com/documentation/file.SASS_REFERENCE.html#syntax"
      version: {
        parse: (text) -> text.match(/Sass (\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/sass-convert"
      }
    }
  ]

  options:
    # TODO: Add support for options
    CSS: false
    Sass: false
    SCSS: false

  beautify: (text, language, options, context) ->
    lang = language.toLowerCase()
    @exe("sass-convert").run([
      @tempFile("input", text),
      "--from", lang, "--to", lang
    ])
