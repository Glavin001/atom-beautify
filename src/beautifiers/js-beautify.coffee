"use strict"
Beautifier = require('./beautifier')

module.exports = class JSBeautify extends Beautifier
  name: "JS Beautify"
  link: "https://github.com/beautify-web/js-beautify"

  options: {
    Blade: true
    HTML: true
    XML: true
    Handlebars: true
    Mustache: true
    JavaScript: true
    EJS: true
    JSX: true
    JSON: true
    CSS:
      indent_size: true
      indent_char: true
      selector_separator_newline: true
      newline_between_rules: true
      preserve_newlines: true
      wrap_line_length: true
      end_with_newline: true
  }

  beautify: (text, language, options) ->
    @verbose("JS Beautify language #{language}")
    @info("JS Beautify Options: #{JSON.stringify(options, null, 4)}")
    options.eol = @getDefaultLineEnding('\r\n','\n',options.end_of_line)
    return new @Promise((resolve, reject) =>
      try
        switch language
          when "JSON", "JavaScript", "JSX"
            beautifyJS = require("js-beautify")
            text = beautifyJS(text, options)
            resolve text
          when "Handlebars", "Mustache"
            # jshint ignore: start
            options.indent_handlebars = true # Force jsbeautify to indent_handlebars
            # jshint ignore: end
            beautifyHTML = require("js-beautify").html
            text = beautifyHTML(text, options)
            resolve text
          when "EJS", "HTML (Liquid)", "HTML", "XML", "Web Form/Control (C#)", "Web Handler (C#)"
            beautifyHTML = require("js-beautify").html
            text = beautifyHTML(text, options)
            @debug("Beautified HTML: #{text}")
            resolve text
          when "CSS"
            beautifyCSS = require("js-beautify").css
            text = beautifyCSS(text, options)
            resolve text
          when "Blade"
            beautifyHTML = require("js-beautify").html
            # pre script (Workaround)
            text = text.replace(/\@(?!yield)([^\n\s]*)/ig, "<blade $1 />")
            text = beautifyHTML(text, options)
            # post script (Workaround)
            text = text.replace(/<blade ([^\n\s]*)\s*\/>/ig, "@$1")
            text = text.replace(/\(\ \'/ig, "('")
            @debug("Beautified HTML: #{text}")
            resolve text
          else
            reject(new Error("Unknown language for JS Beautify: "+language))
      catch err
        @error("JS Beautify error: #{err}")
        reject(err)

    )
