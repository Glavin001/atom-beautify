###
Requires https://github.com/avh4/elm-format
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class ElmFormat extends Beautifier
  name: "elm-format"

  options: {
    Elm: true
  }

  beautify: (text, language, options) ->
    @run("elm-format", [
      @tempFile("input", text)
      ])
