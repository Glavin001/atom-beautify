"use strict"
Beautifier = require('./beautifier')

module.exports = class CoffeeFmt extends Beautifier
  name: "coffee-fmt"
  link: "https://github.com/sterpe/coffee-fmt"

  options: {
    # Apply language-specific options
    CoffeeScript:
      tab: ["indent_size", \
        "indent_char", "indent_with_tabs", \
        (indentSize, indentChar, indentWithTabs) ->
          return "\t" if indentWithTabs
          Array(indentSize+1).join(indentChar)
      ]
  }

  beautify: (text, language, options) ->
    @verbose('beautify', language, options)
    return new @Promise((resolve, reject) ->
      # Add newLine option
      options.newLine = "\n"
      # Require
      fmt = require('coffee-fmt')
      # Format!
      try
        results = fmt.format(text, options)
        # Return beautified CoffeeScript code
        resolve(results)
      catch e
        reject(e)
    )
