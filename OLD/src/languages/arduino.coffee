module.exports = {

  name: "Arduino"
  namespace: "arduino"

  ###
  Supported Grammars
  ###
  grammars: [
    "Arduino"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "ino"
    "pde"
  ]

  options:
    configPath:
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
