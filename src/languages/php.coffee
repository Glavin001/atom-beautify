module.exports = {

  name: "PHP"
  namespace: "php"

  ###
  Supported Grammars
  ###
  grammars: [
    "PHP"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "php"
    "module"
    "inc"
  ]

  defaultBeautifier: "PHP-CS-Fixer"

  options:
    cs_fixer_path:
      title: "PHP-CS-Fixer Path"
      type: 'string'
      default: ""
      description: "Path to the `php-cs-fixer` CLI executable"
    fixers:
      type: 'string'
      default: ""
      description: "Add fixer(s). i.e. linefeed,-short_tag,indentation"
    level:
      type: 'string'
      default: ""
      description: "By default, all PSR-2 fixers and some additional ones are run."
    phpcbf_path:
      title: "PHPCBF Path"
      type: 'string'
      default: ""
      description: "Path to the `phpcbf` CLI executable",
    standard:
      title: "PHPCBF Standard"
      type: 'string'
      default: "",
      description: "Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules"

}
