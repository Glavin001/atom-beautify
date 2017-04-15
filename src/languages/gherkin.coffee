module.exports = {

  name: "gherkin"
  namespace: "gherkin"
  scope: []

  grammars: [
    "Gherkin"
  ]

  extensions: [
    "feature"
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
      minimum: 0
      description: "Indentation character"
}
