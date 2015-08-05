# Get Atom defaults
scope = ['source.ruby']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Ruby"
  namespace: "ruby"

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
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: defaultIndentChar
      description: "Indentation character"
      enum: [" ", "\t"]


}
