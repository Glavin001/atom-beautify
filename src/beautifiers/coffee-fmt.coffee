"use strict"
Beautifier = require('./beautifier')

module.exports = class PrettyDiff extends Beautifier
    name: "coffee-fmt"

    options: {
        # Apply language-specific options
        CoffeeScript:
            tab: ["indent_size", "indent_char", "indent_with_tabs", (indentSize, indentChar, indentWithTabs) ->
                return "\t" if indentWithTabs
                Array(indentSize+1).join(indentChar)
            ]
    }

    beautify: (text, language, options) ->
        return new @Promise((resolve, reject) ->
            # Add newLine option
            options.newLine = "\n"
            # Require
            fmt = require('coffee-fmt')
            # Format!
            results = fmt.format(text, options)
            # Return beautified CoffeeScript code
            resolve(results)
        )
