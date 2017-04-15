module.exports = {

  name: "Ruby"
  namespace: "ruby"
  scope: ['source.ruby']

  ###
  Supported Grammars
  ###
  grammars: [
    "Ruby"
    "Ruby on Rails"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "rb"
  ]

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
      enum: [" ", "\t"]
    rubocop_path:
      title: "Rubocop Path"
      type: 'string'
      default: ""
      description: "Path to the `rubocop` CLI executable"

}
