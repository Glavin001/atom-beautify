console.log('loading nunjucks')

module.exports = {

  name: "Nunjucks"
  namespace: "nunjucks"
  fallback: ['html','mustache']

  ###
  Supported Grammars
  ###
  grammars: [
    "Nunjucks",
    "Nunjucks Templates",
    "HTML (Nunjucks Templates)"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "njk",
    "nunjucks"
  ]

  options: []

}
