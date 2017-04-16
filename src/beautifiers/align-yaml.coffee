"use strict"
Beautifier = require('./beautifier')

module.exports = class AlignYaml extends Beautifier
  name: "align-yaml"
  link: "https://github.com/jonschlinkert/align-yaml"

  options: {
    YAML:
      padding: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      align = require('align-yaml')
      result = align(text, options.padding)
      resolve(result)
    )
