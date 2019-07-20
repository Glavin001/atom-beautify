path = require('path')
module.exports = {

  name: "Clojure"
  namespace: "clj"

  ###
  Supported Grammars
  ###
  grammars: [
    "Clojure"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    'clj', 'cljs', 'edn'
  ]

  defaultBeautifier: "cljfmt"

  options: {
    executable_path:
      type: 'string'
      default: path.resolve(__dirname, "..", "..", "..", "node_modules/.bin/cljfmt")
      description: "The path to the cljfmt executable to use"
  }
}
