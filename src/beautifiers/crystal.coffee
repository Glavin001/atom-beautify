###
Requires https://github.com/jaspervdj/stylish-haskell
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Crystal extends Beautifier
  name: "Crystal"
  link: "http://crystal-lang.org"

  options: {
    Crystal: true
  }

  beautify: (text, language, options) ->
    # Seems that Crystal dosen't have Windows support yet.
    if @isWindows
      @Promise.reject(@commandNotFoundError(
        'crystal'
        {
        link: "http://crystal-lang.org"
        program: "crystal"
        })
      )
    else
      @run("crystal", [
        'tool',
        'format',
        tempFile = @tempFile("temp", text)
        ], {ignoreReturnCode: true})
        .then(=>
          @readFile(tempFile)
        )
