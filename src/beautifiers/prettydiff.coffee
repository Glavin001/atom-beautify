"use strict"
Beautifier = require('./beautifier')

module.exports = class PrettyDiff extends Beautifier
  name: "Pretty Diff"
  options: {
    # Apply these options first / globally, for all languages
    _:
      inchar: "indent_char"
      insize: "indent_size"
      objsort: (objsort) ->
        objsort or false
      preserve: ['preserve_newlines', (preserve_newlines) ->
        if (preserve_newlines is true ) then \
          "all" else "none"
      ]
      cssinsertlines: "newline_between_rules"
      comments: ["indent_comments", (indent_comments) ->
        if (indent_comments is false) then \
          "noindent" else "indent"
      ]
      force: "force_indentation"
      quoteConvert: "convert_quotes"
      vertical: ['align_assignments', (align_assignments) ->
        if (align_assignments is true ) then \
          "all" else "none"
      ]
      wrap: "wrap_line_length"
      space: "space_after_anon_function"
      noleadzero: "no_lead_zero"
      endcomma: "end_with_comma"
      methodchain: ['break_chained_methods', (break_chained_methods) ->
        if (break_chained_methods is true ) then \
          false else true
      ]
      ternaryline: "preserve_ternary_lines"
    # Apply language-specific options
    CSV: true
    Coldfusion: true
    ERB: true
    EJS: true
    HTML: true
    XML: true
    SVG: true
    Spacebars: true
    JSX: true
    JavaScript: true
    CSS: true
    SCSS: true
    Sass: true
    JSON: true
    TSS: true
    Twig: true
    LESS: true
    Swig: true
    Visualforce: true
    "Riot.js": true
  }

  beautify: (text, language, options) ->

    return new @Promise((resolve, reject) =>
      prettydiff = require("prettydiff")
      _ = require('lodash')

      # Select Prettydiff language
      lang = "auto"
      switch language
        when "CSV"
          lang = "csv"
        when "Coldfusion"
          lang = "html"
        when "EJS", "Twig"
          lang = "ejs"
        when "ERB"
          lang = "html_ruby"
        when "Handlebars", "Mustache", "Spacebars", "Swig", "Riot.js"
          lang = "handlebars"
        when "SGML"
          lang = "markup"
        when "XML", "Visualforce", "SVG"
          lang = "xml"
        when "HTML"
          lang = "html"
        when "JavaScript"
          lang = "javascript"
        when "JSON"
          lang = "json"
        when "JSX"
          lang = "jsx"
        when "JSTL"
          lang = "jsp"
        when "CSS"
          lang = "css"
        when "LESS"
          lang = "less"
        when "SCSS", "Sass"
          lang = "scss"
        when "TSS"
          lang = "tss"
        else
          lang = "auto"

      # Prettydiff Arguments
      args =
        source: text
        lang: lang
        mode: "beautify"

      # Merge args intos options
      _.merge(options, args)

      # Beautify
      @verbose('prettydiff', options)
      output = prettydiff.api(options)
      result = output[0]

      # Return beautified text
      resolve(result)

    )
