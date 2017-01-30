module.exports = {

  name: "Nginx"
  namespace: "nginx"

  ###
  Supported Grammars
  ###
  grammars: [
    "nginx"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "conf"
  ]

  defaultBeautifier: "Nginx Beautify"

  options:
    spaces:
      title: "Spaces"
      type: "number"
      default: 0
      description: "Indent with spaces"
    tabs:
      title: "Tabs"
      type: "number"
      default: 1
      description: "Indent with tabs"
    dontJoinCurlyBracet:
      title: "Don't join curly brackets"
      type: "boolean"
      default: true
      descriotion: ""
}
