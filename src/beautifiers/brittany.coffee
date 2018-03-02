###
Requires https://github.com/lspitzner/brittany
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Brittany extends Beautifier
  name: "brittany"
  link: "https://github.com/lspitzner/brittany"
  isPreInstalled: false

  options: {
    Haskell: false
  }

  beautify: (text, language, options) ->
    @run("brittany", [
      @tempFile("input", text)
      ], {
        help: {
          link: "https://github.com/lspitzner/brittany"
        }
      })
