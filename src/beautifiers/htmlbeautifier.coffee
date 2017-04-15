###
Requires https://github.com/threedaymonk/htmlbeautifier
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class HTMLBeautifier extends Beautifier
  name: "HTML Beautifier"
  link: "https://github.com/threedaymonk/htmlbeautifier"
  isPreInstalled: false

  options: {
    ERB:
      indent_size: true
  }

  beautify: (text, language, options) ->
    console.log('erb', options)
    @run("htmlbeautifier", [
      "--tab-stops", options.indent_size
      tempFile = @tempFile("temp", text)
      ])
      .then(=>
        @readFile(tempFile)
      )
