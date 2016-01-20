module.exports = {

  name: "XML"
  description: "XML"
  namespace: "xml"
  fallback: ['html']

  ###
  Supported Grammars
  ###
  grammars: [
    "SLD", "XML", "XHTML", "XSD", "XSL", "JSP"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'sld', 'xml', 'xhtml', 'xsd', 'xsl', 'jsp'
  ]

  defaultBeautifier: "Pretty Diff"

  options: []

}
