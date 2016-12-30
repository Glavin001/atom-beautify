"use strict"
Beautifier = require('./beautifier')

module.exports = class BashBeautify extends Beautifier
  name: "beautysh"
  link: "https://github.com/bemeurer/beautysh"
  options: {
    Bash:
      indent_size: true
  }

  beautify: (text, language, options) ->
    file = @tempFile("input", text)
    @run('beautysh', [ '-i', options.indent_size, '-f', file ], help: { link: "https://github.com/bemeurer/beautysh" })
    .then(=> @readFile file)
