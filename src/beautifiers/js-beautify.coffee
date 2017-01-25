"use strict"
Beautifier = require('./beautifier')

module.exports = class JSBeautify extends Beautifier
  name: "JS Beautify"
  link: "https://github.com/beautify-web/js-beautify"

  options: {
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
    #TODO reconsider handling of EOL once js-beautify adds EOL detection
    #see https://github.com/beautify-web/js-beautify/issues/899
    options.eol = getDefaultLineEnding() ? options.eol #fixes issue #707
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
          else
            reject(new Error("Unknown language for JS Beautify: "+language))
      catch err
        @error("JS Beautify error: #{err}")
        reject(err)

    )

  # Retrieves the default line ending based upon the Atom configuration
  #  `line-ending-selector.defaultLineEnding`. If the Atom configuration
  #  indicates "OS Default", the `process.platform` is queried, returning
  #  CRLF for Windows systems and LF for all other systems.
  # Code modified from atom/line-ending-selector
  # returns: The correct line-ending character sequence based upon the Atom
  #  configuration, or `null` if the Atom line ending configuration was not
  #  recognized.
  # see: https://github.com/atom/line-ending-selector/blob/master/lib/main.js
  getDefaultLineEnding= ->
    switch atom.config.get('line-ending-selector.defaultLineEnding')
      when 'LF'
        return '\n'
      when 'CRLF'
        return '\r\n'
      when 'OS Default'
        return if process.platform is 'win32' then '\r\n' else '\n'
      else
        return null
