###
Requires https://github.com/bbatsov/rubocop
###

"use strict"
Beautifier = require('./beautifier')

module.exports = class Rubocop extends Beautifier
  name: "Rubocop"

  options: {
    Ruby:
      indent_size: true
  }

  beautify: (text, language, options) ->

    # Generate config file
    yaml = require("yaml-front-matter")

    config = {
      "Style/IndentationWidth":
        "Width": options.indent_size
    }
    configStr = yaml.safeDump(config)
    @debug("rubocop", config, configStr)

    @run("rubocop", [
      "--auto-correct"
      "--config", @tempFile("rubocop-config", configStr)
      tempFile = @tempFile("temp", text)
      ], {ignoreReturnCode: true})
      .then(=>
        # console.log('rubocop', arguments, tempFile)
        @readFile(tempFile)
        # .then((text) ->
        #     console.log('rubocop', text)
        #     return text
        # )
      )
