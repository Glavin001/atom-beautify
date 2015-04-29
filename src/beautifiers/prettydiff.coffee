"use strict"
prettydiff = require("prettydiff")
Beautifier = require('./beautifier')
_ = require('lodash')

module.exports = class PrettyDiff extends Beautifier

    options: {
        CSV: true
        HTML: true
        JavaScript: true
        CSS: true
        SCSS: true
        Sass: true
        JSON: true
        TSS: true
        LESS: {
            inchar: "indent_char"
            insize: "indent_size"
            alphasort: (options) ->
                options.alphasort or false
            preserve: (options) ->
                if (options.preserve_newlines is true ) then \
                    "all" else "none"
        }
    }

    beautify: (text, language, options) ->

        return new @Promise((resolve, reject) ->

            # Select Prettydiff language
            lang = "auto"
            switch language
                when "CSV"
                    lang = "csv"
                when "EJS Template", "ERB Template", "Handlebars", "JSTL", "Markup (non-specific)", "Mustache Template", "SGML", "Spacebars Template", "XML"
                    lang = "markup"
                when "HTML"
                    lang = "html"
                when "JavaScript", "JSON", "JSX"
                    lang = "javascript"
                when "CSS", "LESS", "SCSS", "SASS"
                    lang = "css"
                when "TSS"
                    lang = "tss"
                when "Plain text"
                    lang = "text"
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
