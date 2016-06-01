# Get Atom defaults
scope = ['text.marko']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 4)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Marko"
  namespace: "marko"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "Marko"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "marko"
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
    syntax:
      type: 'string'
      default: "html"
      enum: ["html", "concise"]
      description: "[html|concise]"

  defaultBeautifier: "Marko Beautifier"

}
