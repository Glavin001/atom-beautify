# Get Atom defaults
scope = ['source.sql']
tabLength = atom?.config.get('editor.tabLength', scope: scope) ? 4
softTabs = atom?.config.get('editor.softTabs', scope: scope) ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

  name: "SQL"
  namespace: "sql"

  ###
  Supported Grammars
  ###
  grammars: [
    "SQL (Rails)"
    "SQL"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "sql"
  ]

  options:
    # SQL
    indent_size:
      type: 'integer'
      default: defaultIndentSize
      minimum: 0
      description: "Indentation size/length"
    keywords:
      type: 'string'
      default: "upper"
      description: "Change case of keywords"
      enum: ["unchanged","lower","upper","capitalize"]
    identifiers:
      type: 'string'
      default: "unchanged"
      description: "Change case of identifiers"
      enum: ["unchanged","lower","upper","capitalize"]

}
