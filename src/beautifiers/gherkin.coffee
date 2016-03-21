###
###

"use strict"
Beautifier = require('./beautifier')
Lexer = require('gherkin').Lexer('en')
logger = require('../logger')(__filename)

module.exports = class Gherkin extends Beautifier
  name: "Gherkin formatter"

  options: {
    gherkin: true
  }

  beautify: (text, language, options) ->
    return new @Promise((resolve, reject) ->
      recorder = {
        lines: []
        tags: []
        comments: []

        last_obj: null

        indent_to: (indent_level = 0) ->
          return options.indent_char.repeat(options.indent_size * indent_level)

        write_blank: () ->
          @lines.push('')

        write_indented: (content, indent = 0) ->
          for line in content.trim().split("\n")
            @lines.push("#{@indent_to(indent)}#{line.trim()}")

        write_comments: (indent = 0) ->
          for comment in @comments.splice(0, @comments.length)
            @write_indented(comment, indent)

        write_tags: (indent = 0) ->
          if @tags.length > 0
            @write_indented(@tags.splice(0, @tags.length).join(' '), indent)

        comment: (value, line) ->
          logger.verbose({token: 'comment', value: value.trim(), line: line})
          @comments.push(value)

        tag: (value, line) ->
          logger.verbose({token: 'tag', value: value, line: line})
          @tags.push(value)

        feature: (keyword, name, description, line) ->
          logger.verbose({token: 'feature', keyword: keyword, name: name, description: description, line: line})

          @write_comments(0)
          @write_tags(0)
          @write_indented("#{keyword}: #{name}", '')
          @write_indented(description, 1) if description

        background: (keyword, name, description, line) ->
          logger.verbose({token: 'background', keyword: keyword, name: name, description: description, line: line})

          @write_blank()
          @write_comments(1)
          @write_indented("#{keyword}: #{name}", 1)
          @write_indented(description, 2) if description

        scenario: (keyword, name, description, line) ->
          logger.verbose({token: 'scenario', keyword: keyword, name: name, description: description, line: line})

          @write_blank()
          @write_comments(1)
          @write_tags(1)
          @write_indented("#{keyword}: #{name}", 1)
          @write_indented(description, 2) if description

        scenario_outline: (keyword, name, description, line) ->
          logger.verbose({token: 'outline', keyword: keyword, name: name, description: description, line: line})

          @write_blank()
          @write_comments(1)
          @write_tags(1)
          @write_indented("#{keyword}: #{name}", 1)
          @write_indented(description, 2) if description

        examples: (keyword, name, description, line) ->
          logger.verbose({token: 'examples', keyword: keyword, name: name, description: description, line: line})

          @write_blank()
          @write_comments(2)
          @write_tags(2)
          @write_indented("#{keyword}: #{name}", 2)
          @write_indented(description, 3) if description

        step: (keyword, name, line) ->
          logger.verbose({token: 'step', keyword: keyword, name: name, line: line})

          @write_comments(2)
          @write_indented("#{keyword}#{name}", 2)

        doc_string: (content_type, string, line) ->
          logger.verbose({token: 'doc_string', content_type: content_type, string: string, line: line})
          three_quotes = '"""'

          @write_comments(2)
          @write_indented("#{three_quotes}#{content_type}\n#{string}\n#{three_quotes}", 3)

        row: (cells, line) ->
          logger.verbose({token: 'row', cells: cells, line: line})

          # TODO: need to collect rows so that we can align the vertical pipes to the widest columns
          # See Gherkin::Formatter::PrettyFormatter#table(rows)
          @write_comments(3)
          @write_indented("| #{cells.join(' | ')} |", 3)

        eof: () ->
          logger.verbose({token: 'eof'})
          # If there were any comments left, treat them as step comments.
          @write_comments(2)
      }

      lexer = new Lexer(recorder)
      lexer.scan(text)

      loggerLevel = atom?.config.get('atom-beautify.general.loggerLevel')
      if loggerLevel is 'verbose'
        for line in recorder.lines
          logger.verbose("> #{line}")

      resolve recorder.lines.join("\n")
    )
