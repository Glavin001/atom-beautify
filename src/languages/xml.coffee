module.exports = {

  name: "XML"
  description: "XML"
  namespace: "xml"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "XML", "XHTML", "XSD", "XSL", "JSP"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'xml', 'xhtml', 'xsd', 'xsl', 'jsp'
  ]

  defaultBeautifier: "Pretty Diff"

  options: []

}
