"use strict"
Beautifier = require('./beautifier')
beautifyCodeBlocks = require './markdown-blocks'

module.exports = class TidyMarkdown extends Beautifier
  name: "Tidy Markdown"
  link: "https://github.com/slang800/tidy-markdown"
  options: {
    _: {
      beautifyCodeBlocks: true
    }
    Markdown: true
  }

  beautify: (text, language, options) ->
    logger = @logger;
    return new @Promise((resolve, reject) ->
      tidyMarkdown = require 'tidy-markdown'
      cleanMarkdown = tidyMarkdown(text, logger)
      if options.beautifyCodeBlocks
        beautifyCodeBlocks(cleanMarkdown)
          .then((t) => resolve(t))
          .catch((e) => reject(e))
      else
        resolve(cleanMarkdown)
    )
