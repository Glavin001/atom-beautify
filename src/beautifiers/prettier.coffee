"use strict"

Beautifier = require('./beautifier')
prettier = require("prettier")

module.exports = class Prettier extends Beautifier
  name: "Prettier"
  link: "https://github.com/prettier/prettier"
  options: {
    JavaScript: false
    CSS: false
    LESS: false
    SCSS: false
    Vue: false
    JSON: false
    Markdown: false
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      _ = require('lodash')

      prettierLanguage = _.find(prettier.getSupportInfo().languages, 'name': language)
      if prettierLanguage
        parser = prettierLanguage.parsers[0]
      else
        reject(new Error("Unknown language for Prettier"))

      try
        result = prettier.format(text, {
          tabWidth: options.indent_size,
          useTabs: options.indent_with_tabs
          parser
        });
        resolve result
      catch err
        reject(err)
    )