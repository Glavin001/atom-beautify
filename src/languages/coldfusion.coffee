scope = ['text.html']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "Coldfusion"
  description: "Coldfusion Markup; cfscript is also handled via the prettydiff javascript parser"
  namespace: "cfml"

  ###
  Supported Grammars
  ###
  grammars: [
    "html"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "cfm"
    "cfml"
    "cfc"
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
    wrap_line_length:
      type: 'integer'
      default: 250
      description: "Maximum characters per line (0 disables)"
    preserve_newlines:
      type: 'boolean'
      default: true
      description: "Preserve line-breaks"

}
