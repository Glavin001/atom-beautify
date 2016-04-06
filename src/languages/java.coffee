module.exports = {

  name: "Java"
  namespace: "java"

  ###
  Supported Grammars
  ###
  grammars: [
    "Java"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "java"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
