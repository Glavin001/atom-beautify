###
Requires https://github.com/jaspervdj/stylish-haskell
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class StylishHaskell extends Beautifier
  name: "stylish-haskell"

  options: {
    Haskell: true
  }

  beautify: (text, language, options) ->
    @run("stylish-haskell", [
      @tempFile("input", text)
      ])
