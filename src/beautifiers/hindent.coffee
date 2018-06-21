###
Requires https://github.com/commercialhaskell/hindent
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Hindent extends Beautifier
  name: "hindent"
  link: "https://github.com/commercialhaskell/hindent"
  isPreInstalled: false

  options: {
    Haskell: false
  }

  beautify: (text, language, options) ->
    @run("hindent", [
      tempFile = @tempFile("temp", text)
      ], {
        help: {
          link: "https://github.com/commercialhaskell/hindent"
        }
      })
      .then(=>
        @readFile(tempFile)
      )
