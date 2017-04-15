module.exports = {

  name: "R"
  namespace: "r"
  scope: ['text.r']

  ###
  Supported Grammars
  ###
  grammars: [
    "R"
]

  ###
  Supported extensions
  ###
  extensions: [
    "r"
    "R"
  ]

  options:
    indent_size:
      type: 'integer'
      default: null
      description: "Indentation size/length"

}
