module.exports = {

  name: "Perl"
  namespace: "perl"

  ###
  Supported Grammars
  ###
  grammars: [
    "Perl", "Perl 6"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "pl"
  ]

  options:
    perltidy_profile:
      type: 'string'
      default: ""
      description: "Specify a configuration file which will override the default name of .perltidyrc"

}
