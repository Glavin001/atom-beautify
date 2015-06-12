module.exports = {

  name: "Objective-C"
  namespace: "objectivec"
  fallback: []

  ###
  Supported Grammars
  ###
  grammars: [
    "Objective-C"
    "Objective-C++"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "m"
    "mm"
    "h"
  ]

  options:
    configPath:
      title: "Config Path"
      type: 'string'
      default: ""
      description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}
