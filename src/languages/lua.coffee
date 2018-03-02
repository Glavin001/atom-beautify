module.exports = {

  name: "Lua"
  namespace: "lua"

  ###
  Supported Grammars
  ###
  grammars: [
    "Lua"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'lua'
    'ttslua'
  ]

  defaultBeautifier: "Lua beautifier"

  options:
    indent_size:
      type: 'integer'
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    end_of_line:
      type: 'string'
      default: "System Default"
      enum: ["CRLF","LF","System Default"]
      description: "Override EOL from line-ending-selector"
}
