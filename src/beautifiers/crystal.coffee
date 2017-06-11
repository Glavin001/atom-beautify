###
Requires https://github.com/jaspervdj/stylish-haskell
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Crystal extends Beautifier
  name: "Crystal"
  link: "http://crystal-lang.org"
  executables: [
    {
      name: "Crystal"
      cmd: "crystal"
      homepage: "http://crystal-lang.org"
      installation: "https://crystal-lang.org/docs/installation/"
      version: {
        parse: (text) -> text.match(/Crystal (\d+\.\d+\.\d+)/)[1]
      }
      docker: {
        image: "unibeautify/crystal"
      }
    }
  ]

  options: {
    Crystal: false
  }

  beautify: (text, language, options) ->
    @exe("crystal").run([
      'tool',
      'format',
      tempFile = @tempFile("temp", text)
      ], {ignoreReturnCode: true})
      .then(=>
        @readFile(tempFile)
      )
