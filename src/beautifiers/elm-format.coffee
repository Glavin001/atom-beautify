###
Requires https://github.com/avh4/elm-format
###
"use strict"
Beautifier = require('./beautifier')

module.exports = class ElmFormat extends Beautifier
  name: "elm-format"
  link: "https://github.com/avh4/elm-format"
  executables: [
    {
      name: "elm-format"
      cmd: "elm-format"
      homepage: "https://github.com/avh4/elm-format"
      installation: "https://github.com/avh4/elm-format#installation-"
      version: {
        args: ['--help']
        parse: (text) ->
          try
            return text.match(/elm-format-\d+.\d+ (\d+\.\d+\.\d+)/)[1]
          catch
            return text.match(/elm-format (\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/elm-format"
      }
    }
  ]

  options: {
    Elm: true
  }

  beautify: (text, language, options) ->
    tempfile = @tempFile("input", text, ".elm")
    .then (name) =>
      @exe("elm-format")
        .run([
          '--yes',
          name
        ])
        .then () =>
          @readFile(name)
