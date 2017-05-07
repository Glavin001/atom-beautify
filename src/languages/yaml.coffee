module.exports = {

  name: "YAML"
  namespace: "yaml"
  fallback: []
  scope: ['source.yaml']

  ###
  Supported Grammars
  ###
  grammars: [
    "YAML"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "yml",
    "yaml"
  ]

  defaultBeautifier: "align-yaml"

  options: {
    padding:
      type: 'integer'
      default: 0
      minimum: 0
      description: "The amount of padding to add next to each line."
  }

}
