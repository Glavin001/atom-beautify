module.exports = {

  name: "Vala"
  namespace: "vala"

  ###
  Supported Grammars
  ###
  grammars: [
    "Vala"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "vala"
    "vapi"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
