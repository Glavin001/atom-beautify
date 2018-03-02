###
Requires [gn](https://chromium.googlesource.com/chromium/src/tools/gn)
###
"use strict"
Beautifier = require('./beautifier')
path = require('path')
semver = require('semver')

module.exports = class GN extends Beautifier
  name: "GN"
  link: "https://chromium.googlesource.com/chromium/src/tools/gn"
  executables: [
    {
      name: "gn"
      cmd: "gn"
      homepage: "https://chromium.googlesource.com/chromium/src/tools/gn"
      installation: "https://www.chromium.org/developers/how-tos/get-the-code"
      version: {
        parse: (text) -> semver.clean("0.0." + text)
      }
    }
  ]

  options: {
    GN: false
  }

  beautify: (text, language, options, context) ->
    cwd = context.filePath and path.dirname context.filePath
    @exe("gn").run(["format", "--stdin"], {
      cwd: cwd
      onStdin: (stdin) ->
        stdin.end text
    })
