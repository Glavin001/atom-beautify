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
    }

    beautify: (text, language, options) ->

        return new @Promise((resolve, reject) ->
            prettydiff = require("prettydiff")
            _ = require('lodash')

            # Select Prettydiff language
            lang = "auto"
            switch language
                when "CSV"
                    lang = "csv"
                when "EJS", "ERB", \
                "Handlebars", "Mustache", \
                # "Markup", "JSTL", "SGML", \ # Currently unsupported
                "Spacebars", "XML"
                    lang = "markup"
                when "HTML"
                    lang = "html"
                when "JavaScript", "JSON", "JSX"
                    lang = "javascript"
                when "CSS", "LESS", "SCSS", "Sass"
                    lang = "css"
                when "TSS"
                    lang = "tss"
                # when "Plain text"
                #     lang = "text"
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
            output = prettydiff.api(options)
            result = output[0]

            # Return beautified text
            resolve(result)

        )
