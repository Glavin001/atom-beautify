"use strict"
Beautifier = require('./beautifier')

module.exports = class PugBeautify extends Beautifier
  name: "Pug Beautify"
  options: {
    # Apply these options first / globally, for all languages
    Jade:
      fill_tab: ['indent_char', (indent_char) ->
        # Should use tabs?
        return (indent_char is "\t")
      ]
      omit_div: true
      tab_size: "indent_size"
  }

  beautify: (text, language, options) ->

    return new @Promise((resolve, reject) ->
      pugBeautify = require("pug-beautify")
      try
        resolve(pugBeautify(text, options))
      catch error
        # Error occurred
        reject(error)
    )
