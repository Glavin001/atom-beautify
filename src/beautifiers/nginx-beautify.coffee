"use strict"
Beautifier = require('./beautifier')

module.exports = class NginxBeautify extends Beautifier
  name: "Nginx Beautify"
  link: "https://github.com/denysvitali/nginxbeautify"

  options: {
    Nginx: {
      spaces: ["indent_with_tabs", "indent_size", "indent_char", (indent_with_tabs, indent_size, indent_char) ->
        if indent_with_tabs or indent_char is "\t"
          0
        else
          indent_size
      ]
      tabs: ["indent_with_tabs", "indent_size", "indent_char", (indent_with_tabs, indent_size, indent_char) ->
        if indent_with_tabs or indent_char is "\t"
          indent_size
        else
          0
      ]
      dontJoinCurlyBracet: true
    }
  }

  beautify: (text, language, options) ->

    return new @Promise((resolve, reject) ->
      Beautify = require("nginxbeautify")
      instance = new Beautify(options)
      try
        resolve(instance.parse(text))
      catch error
        # Error occurred
        reject(error)
    )
