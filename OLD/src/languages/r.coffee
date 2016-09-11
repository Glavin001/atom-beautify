# Get Atom defaults
scope = ['text.html']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "R"
  namespace: "r"

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
      default: defaultIndentSize
      description: "Indentation size/length"

}
