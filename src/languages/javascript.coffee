module.exports = {

  name: "JavaScript"
  namespace: "js"
  scope: ['source.js']

  ###
  Supported Grammars
  ###
  grammars: [
    "JavaScript"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "js"
  ]

  defaultBeautifier: "JS Beautify"

  ###
  ###
  options:
    # JavaScript
    indent_size:
      type: 'integer'
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    indent_level:
      type: 'integer'
      default: 0
      description: "Initial indentation level"
    indent_with_tabs:
      type: 'boolean'
      default: null
      description: "Indentation uses tabs, overrides `Indent Size` and `Indent Char`"
    preserve_newlines:
      type: 'boolean'
      default: true
      description: "Preserve line-breaks"
    max_preserve_newlines:
      type: 'integer'
      default: 10
      description: "Number of line-breaks to be preserved in one chunk"
    space_in_paren:
      type: 'boolean'
      default: false
      description: "Add padding spaces within paren, ie. f( a, b )"
    jslint_happy:
      type: 'boolean'
      default: false
      description: "Enable jslint-stricter mode"
    space_after_anon_function:
      type: 'boolean'
      default: false
      description: "Add a space before an anonymous function's parens, ie. function ()"
    brace_style:
      type: 'string'
      default: "collapse"
      enum: ["collapse", "collapse-preserve-inline", "expand", "end-expand", "none"]
      description: "[collapse|collapse-preserve-inline|expand|end-expand|none]"
    break_chained_methods:
      type: 'boolean'
      default: false
      description: "Break chained method calls across subsequent lines"
    keep_array_indentation:
      type: 'boolean'
      default: false
      description: "Preserve array indentation"
    keep_function_indentation:
      type: 'boolean'
      default: false
      description: ""
    space_before_conditional:
      type: 'boolean'
      default: true
      description: ""
    eval_code:
      type: 'boolean'
      default: false
      description: ""
    unescape_strings:
      type: 'boolean'
      default: false
      description: "Decode printable characters encoded in xNN notation"
    wrap_line_length:
      type: 'integer'
      default: 0
      description: "Wrap lines at next opportunity after N characters"
    end_with_newline:
      type: 'boolean'
      default: false
      description: "End output with newline"
    end_with_comma:
      type: 'boolean'
      default: false
      description: "If a terminating comma should be inserted into \
                  arrays, object literals, and destructured objects."
    end_of_line:
      type: 'string'
      default: "System Default"
      enum: ["CRLF","LF","System Default"]
      description: "Override EOL from line-ending-selector"
    object_curly_spacing:
      type: 'boolean'
      default: false
      description: "Insert spaces between brackets in object literals"

}
