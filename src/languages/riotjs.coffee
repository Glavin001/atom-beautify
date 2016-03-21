module.exports = {

  name: "Riot.js"
  description: "Riot.js HTML based templating language"
  namespace: "riot"
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

  defaultBeautifier: "Pretty Diff"

  options: []

}
