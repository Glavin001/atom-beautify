"use strict"
Beautifier = require('./beautifier')

module.exports = class PrettyDiff extends Beautifier
  name: "Pretty Diff"
  link: "https://github.com/prettydiff/prettydiff"
  options: {
    # Apply these options first / globally, for all languages
    _:
      inchar: ["indent_with_tabs", "indent_char", (indent_with_tabs, indent_char) ->
        if (indent_with_tabs is true) then \
          "\t" else indent_char
      ]
      insize: ["indent_with_tabs", "indent_size", (indent_with_tabs, indent_size) ->
        if (indent_with_tabs is true) then \
          1 else indent_size
      ]
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
      bracepadding: "space_in_paren"
    # Apply language-specific options
    CSV: true
    Coldfusion: true
    ERB: true
    EJS: true
    HTML: true
    Handlebars: true
    Mustache: true
    Nunjucks: true
    XML: true
    SVG: true
    Spacebars: true
    JSX: true
    JavaScript: true
    CSS: true
    SCSS: true
    JSON: true
    TSS: true
    Twig: true
    LESS: true
    Swig: true
    "UX Markup": true
    Visualforce: true
    "Riot.js": true
    XTemplate: true
    "Golang Template": true
  }

  beautify: (text, language, options) ->
    options.crlf = @getDefaultLineEnding(true,false,options.end_of_line)
    return new @Promise((resolve, reject) =>
      prettydiff = require("prettydiff2")
      _ = require('lodash')

      # Select Prettydiff language
      lang = "auto"
      switch language
        when "CSV"
          lang = "csv"
        when "EJS", "Twig"
          lang = "ejs"
        when "ERB"
          lang = "html_ruby"
        when "Handlebars", "Mustache", "Spacebars", "Swig", "Riot.js", "XTemplate"
          lang = "handlebars"
        when "SGML"
          lang = "markup"
        when "XML", "Visualforce", "SVG", "UX Markup"
          lang = "xml"
        when "HTML", "Nunjucks", "Coldfusion"
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
        when "SCSS"
          lang = "scss"
        when "TSS"
          lang = "tss"
        when "Golang Template"
          lang = "go"
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
      result = prettydiff(options)

      # Return beautified text
      resolve(result)

    )
