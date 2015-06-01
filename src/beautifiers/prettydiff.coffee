"use strict"
Beautifier = require('./beautifier')

module.exports = class PrettyDiff extends Beautifier
    name: "Pretty Diff"
    options: {
        # Apply these options first / globally, for all languages
        _:
            inchar: "indent_char"
            insize: "indent_size"
            alphasort: (alphasort) ->
                alphasort or false
            preserve: ['preserve_newlines', (preserve_newlines) ->
                if (preserve_newlines is true ) then \
                    "all" else "none"
            ]
        # Apply language-specific options
        CSV: true
        ERB: true
        EJS: true
        HTML: true
        XML: true
        Spacebars: true
        JSX: true
        JavaScript: true
        CSS: true
        SCSS: true
        Sass: true
        JSON: true
        TSS: true
        LESS: true
        Swig: true
        Visualforce: true
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
                when "EJS"
                    lang = "ejs"
                when "ERB"
                    lang = "html_ruby"
                when "Handlebars", "Mustache", "Spacebars"
                    lang = "handlebars"
                when "SGML", "Swig"
                    lang = "markup"
                when "XML", "Visualforce"
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
