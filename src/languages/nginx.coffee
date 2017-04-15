module.exports = {

  name: "Nginx"
  namespace: "nginx"
  scope: ['source.conf']

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
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    indent_with_tabs:
      type: 'boolean'
      default: null
      description: "Indentation uses tabs, overrides `Indent Size` and `Indent Char`"
    dontJoinCurlyBracet:
      title: "Don't join curly brackets"
      type: "boolean"
      default: true
      descriotion: ""
}
