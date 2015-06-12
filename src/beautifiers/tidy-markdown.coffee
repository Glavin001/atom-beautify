"use strict"
Beautifier = require('./beautifier')

module.exports = class TidyMarkdown extends Beautifier
  name: "Tidy Markdown"
  options: {
    Markdown: false
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      tidyMarkdown = require 'tidy-markdown'
      cleanMarkdown = tidyMarkdown(text)
      resolve(cleanMarkdown)
    )
