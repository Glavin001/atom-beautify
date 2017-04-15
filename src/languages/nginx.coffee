# Get Atom defaults
scope = ['source.conf']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Nginx"
  namespace: "nginx"

  ###
  Supported Grammars
  ###
  grammars: [
    "nginx"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "conf"
  ]

  defaultBeautifier: "Nginx Beautify"

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
    indent_with_tabs:
      type: 'boolean'
      default: defaultIndentWithTabs
      description: "Indentation uses tabs, overrides `Indent Size` and `Indent Char`"
    dontJoinCurlyBracet:
      title: "Don't join curly brackets"
      type: "boolean"
      default: true
      descriotion: ""
}
