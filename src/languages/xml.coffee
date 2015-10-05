module.exports = {

  name: "XML"
  description: "XML"
  namespace: "xml"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "XML", "XSD", "XSL"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'xml', 'xsd', 'xsl'
  ]

  defaultBeautifier: "Pretty Diff"

  options: []

}
