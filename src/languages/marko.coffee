module.exports = {

  name: "Marko"
  namespace: "marko"
  fallback: ['html']
  scope: ['text.marko']

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
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    syntax:
      type: 'string'
      default: "html"
      enum: ["html", "concise"]
      description: "[html|concise]"

  defaultBeautifier: "Marko Beautifier"

}
