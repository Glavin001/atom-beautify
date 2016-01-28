"use strict"
Beautifier = require('./beautifier')

module.exports = class Remark extends Beautifier
  name: "Remark"
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
    }
    Markdown: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      try
        remark = require 'remark'
        cleanMarkdown = remark.process(text, options)
        resolve cleanMarkdown
      catch err
        @error("Remark error: #{err}")
        reject(err)
    )
