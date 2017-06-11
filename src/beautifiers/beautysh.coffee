"use strict"
Beautifier = require('./beautifier')

module.exports = class BashBeautify extends Beautifier
  name: "beautysh"
  link: "https://github.com/bemeurer/beautysh"
  executables: [
    {
      name: "beautysh"
      cmd: "beautysh"
      homepage: "https://github.com/bemeurer/beautysh"
      installation: "https://github.com/bemeurer/beautysh#installation"
      version: {
        # Does not display version
        args: ['--help'],
        parse: (text) -> text.indexOf("usage: beautysh") isnt -1 and "0.0.0"
      }
      docker: {
        image: "unibeautify/beautysh"
      }
    }
  ]

  options: {
    Bash:
      indent_size: true
  }

  beautify: (text, language, options) ->
    beautysh = @exe("beautysh")
    file = @tempFile("input", text)
    beautysh.run([ '-i', options.indent_size, '-f', file ])
      .then(=> @readFile file)
