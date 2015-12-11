###
Requires https://github.com/avh4/elm-format
###
"use strict"
Beautifier = require('./beautifier')
Promise = require("bluebird")
fs = require("fs")
readFile = Promise.promisify(fs.readFile)
rename = Promise.promisify(fs.rename)

module.exports = class ElmFormat extends Beautifier
  name: "elm-format"

  options: {
    Elm: true
  }

  beautify: (text, language, options) ->
    tempfile = @tempFile("input", text)
    .then (name) =>
      newName = name + ".elm"
      rename name, newName
      .then () =>
        @run("elm-format", [
          '--yes',
          newName
          ])
        .then () ->
          readFile newName, {encoding: 'utf-8'}
