module.exports = {

  name: "Jade"
  namespace: "jade"
  fallback: ['html']
  scope: ['text.jade']

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
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    omit_div:
      type: 'boolean'
      default: false
      description: "Whether to omit/remove the 'div' tags."
  ]

  defaultBeautifier: "Pug Beautify"

}
