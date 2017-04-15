module.exports = {

  name: "Coldfusion"
  description: "Coldfusion Markup; cfscript is also handled via the prettydiff javascript parser"
  namespace: "cfml"
  scope: ['text.html']

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
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
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
