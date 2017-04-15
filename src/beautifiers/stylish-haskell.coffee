###
Requires https://github.com/jaspervdj/stylish-haskell
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class StylishHaskell extends Beautifier
  name: "stylish-haskell"
  link: "https://github.com/jaspervdj/stylish-haskell"
  isPreInstalled: false

  options: {
    Haskell: true
  }

  beautify: (text, language, options) ->
    @run("stylish-haskell", [
      @tempFile("input", text)
      ], {
        help: {
          link: "https://github.com/jaspervdj/stylish-haskell"
        }
      })
