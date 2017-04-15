module.exports = {

  name: "SQL"
  namespace: "sql"
  scope: ['source.sql']

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
      default: null
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
