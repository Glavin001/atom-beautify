module.exports = {

  name: "Riot.js"
  description: "Riot.js HTML based templating language"
  namespace: "html"
  fallback: ['html', 'mustache']

  ###
  Supported Grammars
  ###
  grammars: [
    "Riot.js", "HTML (Riot Tag)"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'tag'
  ]

  defaultBeautifier: "JS Beautify"

  options: []

}
