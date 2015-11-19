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

    @Promise.all([
      @which(options.rubocop_path) if options.rubocop_path
      @which('rubocop')
    ]).then((paths) =>
      @debug('php-cs-fixer paths', paths)
      _ = require 'lodash'
      path = require 'path'
      # Get first valid, absolute path
      rubocopPath = _.find(paths, (p) -> p and path.isAbsolute(p) )
      @verbose('rubocopPath', rubocopPath)
      @debug('rubocopPath', rubocopPath, paths)
      # Check if PHP-CS-Fixer path was found
      if rubocopPath?
        @run("rubocop", [
          rubocopPath
          "--auto-correct"
          "--config", configFile
          tempFile = @tempFile("temp", text)
          ], {ignoreReturnCode: true})
          .then(=>
            @readFile(tempFile)
          )
      else
        @run("rubocop", [
          "--auto-correct"
          "--config", configFile
          tempFile = @tempFile("temp", text)
          ], {ignoreReturnCode: true})
          .then(=>
            @readFile(tempFile)
          )
