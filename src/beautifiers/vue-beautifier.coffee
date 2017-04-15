"use strict"
Beautifier = require('./beautifier')

module.exports = class VueBeautifier extends Beautifier
  name: "Vue Beautifier"
  link: "https://github.com/Glavin001/atom-beautify/blob/master/src/beautifiers/vue-beautifier.coffee"

  options:
    Vue: true

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) =>
      prettydiff = require("prettydiff")
      _ = require('lodash')
      regexp = /(^<(template|script|style)[^>]*>)((\s|\S)*?)^<\/\2>/gim

      results = text.replace(regexp, (match, begin, type, text) =>
        lang = /lang\s*=\s*['"](\w+)["']/.exec(begin)?[1]
        replaceText = text
        text = text.trim()
        beautifiedText = (switch type
          when "template"
            switch lang
              when "pug", "jade"
                require("pug-beautify")(text, options)
              when undefined
                require("js-beautify").html(text, options)
              else
                undefined
          when "script"
            require("js-beautify")(text, options)
          when "style"
            switch lang
              when "scss"
                options = _.merge(options,
                  source: text
                  lang: "scss"
                  mode: "beautify"
                )
                prettydiff.api(options)[0]
              when "less"
                options = _.merge(options,
                  source: text
                  lang: "less"
                  mode: "beautify"
                )
                prettydiff.api(options)[0]
              when undefined
                require("js-beautify").css(text, options)
              else
                undefined
        )
        result = if beautifiedText then match.replace(replaceText, "\n#{beautifiedText.trim()}\n") else match
        @verbose("Vue part", match, begin, type, text, lang, result)
        return result
      )
      @verbose("Vue final results", results)
      resolve(results)
    )
