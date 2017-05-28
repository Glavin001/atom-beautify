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
  ]

  defaultBeautifier: "Lua beautifier"

  options:
    end_of_line:
      type: 'string'
      default: "System Default"
      enum: ["CRLF","LF","System Default"]
      description: "Override EOL from line-ending-selector"
}
