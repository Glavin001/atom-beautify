"use strict"
Beautifier = require('./beautifier')

module.exports = class BashBeautify extends Beautifier
  name: "beautysh"
  link: "https://github.com/bemeurer/beautysh"
  options: {
    Bash: true
  }

  beautify: (text, language, options) ->
    file = @tempFile("input", text)
    @run('beautysh', [ file ], help: { link: "https://github.com/bemeurer/beautysh" })
    .then(=> @readFile file)
