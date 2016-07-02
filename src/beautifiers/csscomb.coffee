"use strict"
Beautifier = require('./beautifier')

module.exports = class JSBeautify extends Beautifier
  name: "CSScomb"
  link: "https://github.com/csscomb/csscomb.js"

  options: {
    # TODO: Add support for options
    _:
      configPath: true
      predefinedConfig: true
    CSS: true
    LESS: true
    Sass: true
    SCSS: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      # console.log('CSSComb', text, language, options)

      # Require
      Comb = require('csscomb')
      expandHomeDir = require('expand-home-dir')
      CSON = require('season')

      config = null
      try # Load from project config file, throwing error if neither exist
        project = atom.project.getDirectories()?[0]
        try
          config = CSON.readFileSync(project?.resolve '.csscomb.cson')
        catch
          config = require(project?.resolve '.csscomb.json')
      catch
        try # Load from custom config
          config = CSON.readFileSync(expandHomeDir options.configPath)
        catch
          # Fallback to [selected] CSScomb predifined config
          config = Comb.getConfig(options.predefinedConfig)
      # console.log('config', config, options)
      # Configure
      comb = new Comb(config)

      # Determine syntax from Language
      syntax = "css" # Default
      switch language
        when "LESS"
          syntax = "less"
        when "SCSS"
          syntax = "scss"
        when "Sass"
          syntax = "sass"
      # Use
      processedCSS = comb.processString(text, {
        syntax: syntax
      })
      # console.log('processedCSS', processedCSS, syntax)

      resolve(processedCSS)
    )
