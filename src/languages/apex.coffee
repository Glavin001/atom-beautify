module.exports = {

  name: "Apex"
  namespace: "apex"

  ###
  Supported Grammars
  ###
  grammars: [
    "Apex"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "cls"
    "trigger"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
