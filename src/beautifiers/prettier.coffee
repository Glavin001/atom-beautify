"use strict"

Beautifier = require('./beautifier')
prettier = require("prettier")
path = require("path")

module.exports = class Prettier extends Beautifier
  name: "Prettier"
  link: "https://github.com/prettier/prettier"
  options: {
    _:
      tabWidth: "indent_size"
      useTabs: ["indent_with_tabs", "indent_char", (indent_with_tabs, indent_char) ->
        return (indent_with_tabs is true) or (indent_char is "\t")
      ]
    JavaScript:
      bracketSpacing: "object_curly_spacing"
    TypeScript: false
    CSS: false
    LESS: false
    SCSS: false
    Vue: false
    JSON: false
    Markdown: false
  }

  beautify: (text, language, options, context) ->
    return new @Promise((resolve, reject) ->
      _ = require('lodash')

      prettierLanguage = _.find(prettier.getSupportInfo().languages, 'name': language)
      if prettierLanguage
        parser = prettierLanguage.parsers[0]
      else
        reject(new Error("Unknown language for Prettier"))

      filePath = context.filePath and path.dirname context.filePath

      try
        prettier.resolveConfig(filePath).then((configOptions) ->
          result = prettier.format(text, configOptions or options, parser)
          prettier.clearConfigCache()
          resolve result
        )
      catch err
        reject(err)
    )