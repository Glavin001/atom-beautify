module.exports = {

  name: "Pawn"
  namespace: "pawn"

  ###
  Supported Grammars
  ###
  grammars: [
    "Pawn"
  ]

  ###
  Supported extensions
  ###
  extensions: []

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
