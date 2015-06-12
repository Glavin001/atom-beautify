###
Requires http://golang.org/cmd/gofmt/
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Gofmt extends Beautifier
  name: "gofmt"

  options: {
    Go: true
  }

  beautify: (text, language, options) ->
    @run("gofmt", [
      @tempFile("input", text)
      ])
