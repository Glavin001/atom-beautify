###
Requires https://github.com/jaspervdj/stylish-haskell
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Crystal extends Beautifier
  name: "crystal"

  options: {
    Crystal: false
  }

  beautify: (text, language, options) ->
    @run("crystal", [
      'tool'
      'format'
      tempFile = @tempFile("temp", text)
      ], {ignoreReturnCode: true})
      .then(=>
        @readFile(tempFile)
      )
