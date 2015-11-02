module.exports = {

  name: "XML"
  description: "XML"
  namespace: "xml"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "XML", "XSD", "XSL", "JSP"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'xml', 'xsd', 'xsl', 'jsp'
  ]

  defaultBeautifier: "Pretty Diff"

  options: []

}
