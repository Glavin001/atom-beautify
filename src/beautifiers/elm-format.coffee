###
Requires https://github.com/avh4/elm-format
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class ElmFormat extends Beautifier
  name: "elm-format"
  link: "https://github.com/avh4/elm-format"

  options: {
    Elm: true
  }

  beautify: (text, language, options) ->
    tempfile = @tempFile("input", text, ".elm")
    .then (name) =>
      @run("elm-format", [
        '--yes',
        name
        ],
        { help: { link: 'https://github.com/avh4/elm-format#installation-' } }
      )
      .then () =>
        @readFile(name)
