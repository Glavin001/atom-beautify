# Get Atom defaults
tabLength = atom?.config.get('editor.tabLength') ? 4
softTabs = atom?.config.get('editor.softTabs') ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "gherkin"
  namespace: "gherkin"

  grammars: [
    "Gherkin"
  ]

  extensions: [
    "feature"
  ]

  options:
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: defaultIndentChar
      minimum: 0
      description: "Indentation character"
}
