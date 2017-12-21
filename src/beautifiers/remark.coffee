"use strict"
Beautifier = require('./beautifier')
beautifyCodeBlocks = require './markdown-blocks'

module.exports = class Remark extends Beautifier
  name: "Remark"
  link: "https://github.com/wooorm/remark"
  options: {
    _: {
      gfm: true
      yaml: true
      commonmark: true
      footnotes: true
      pedantic: true
      breaks: true
      entities: true
      setext: true
      closeAtx: true
      looseTable: true
      spacedTable: true
      fence: true
      fences: true
      bullet: true
      listItemIndent: true
      incrementListMarker: true
      rule: true
      ruleRepetition: true
      ruleSpaces: true
      strong: true
      emphasis: true
      position: true
      beautifyCodeBlocks: true
    }
    Markdown: true
  }

  beautify: (text, language, options) ->
    logger = @logger;
    return new @Promise((resolve, reject) ->
      try
        remark = require 'remark'
        cleanMarkdown = remark().process(text, options).toString()
        if options.beautifyCodeBlocks
          beautifyCodeBlocks(cleanMarkdown, logger)
            .then((t) => resolve(t))
            .catch((e) => reject(e))
        else
          resolve cleanMarkdown
      catch err
        @error("Remark error: #{err}")
        reject(err)
    )
