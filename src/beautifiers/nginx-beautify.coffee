"use strict"
Beautifier = require('./beautifier')

module.exports = class NginxBeautify extends Beautifier
  name: "Nginx Beautify"
  link: "https://github.com/denysvitali/nginxbeautify"

  options: {
    Nginx: true
  }

  beautify: (text, language, options) ->

    return new @Promise((resolve, reject) ->
      Beautify = require("nginxbeautify")
      instance = new Beautify(options);
      try
        resolve(instance.parse(text))
      catch error
        # Error occurred
        reject(error)
    )
