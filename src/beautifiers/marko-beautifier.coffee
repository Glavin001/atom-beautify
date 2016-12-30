"use strict"
Beautifier = require('./beautifier')

module.exports = class MarkoBeautifier extends Beautifier

  name: 'Marko Beautifier'
  link: "https://github.com/marko-js/marko-prettyprint"

  options:
    Marko: true

  beautify: (text, language, options, context) ->

    return new @Promise((resolve, reject) ->
      markoPrettyprint = require('marko-prettyprint')

      indent_char = options.indent_char || ' '
      indent_size = options.indent_size || 4

      indent = ''

      for i in [0..indent_size - 1]
        indent += indent_char

      prettyprintOptions =
        syntax : options.syntax
        filename: if context? and context.filePath? then context.filePath else require.resolve('marko-prettyprint')
        indent: indent

      try
        resolve(markoPrettyprint(text, prettyprintOptions))
      catch error
        # Error occurred
        reject(error)
    )
