"use strict"
Beautifier = require('./beautifier')

module.exports = class JSBeautify extends Beautifier
  name: "CSScomb"

  options: {
    # TODO: Add support for options
    CSS: false
    LESS: false
    Sass: false
    SCSS: false
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      # console.log('CSSComb', text, language, options)

      # Require
      Comb = require('csscomb')

      config = null
      try
        # Load from Project's .csscomb.json
        projectConfigPath = atom.project.getDirectories()?[0]?.resolve('.csscomb.json')
        config = require(projectConfigPath) # Will throw error if does not exist
      catch e
        # Fallback to csscomb
        config = Comb.getConfig('csscomb')
        # TODO: Add support to select CSSComb predefined config's name
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
