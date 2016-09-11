# Get Atom defaults
scope = ['text.jade']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Jade"
  namespace: "jade"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "Jade", "Pug"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "jade", "pug"
  ]

  options: [
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: defaultIndentChar
      description: "Indentation character"
    omit_div:
      type: 'boolean'
      default: false
      description: "Whether to omit/remove the 'div' tags."
  ]

  defaultBeautifier: "Pug Beautify"

}
