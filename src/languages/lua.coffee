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
    do_not_change_whitespace:
      type: 'boolean'
      default: false
      description: "do not adjust whitespace"
}
