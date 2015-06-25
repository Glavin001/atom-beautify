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

    path = require 'path'
    fs = require 'fs'

    configFile = path.join(atom.project.getPaths()[0], ".rubocop.yml")

    if fs.existsSync(configFile)
      @debug("rubocop", config, fs.readFileSync(configFile, 'utf8'))
    else
      yaml = require("yaml-front-matter")
      # Generate config file
      config = {
        "Style/IndentationWidth":
          "Width": options.indent_size
      }

      configFile = @tempFile("rubocop-config", yaml.safeDump(config))
      @debug("rubocop", config, configFile)

    @run("rubocop", [
      "--auto-correct"
      "--config", configFile
      tempFile = @tempFile("temp", text)
      ], {ignoreReturnCode: true})
      .then(=>
        @readFile(tempFile)
      )
