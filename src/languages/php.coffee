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
      description: "Absolute path to the `php-cs-fixer` CLI executable"
    rules:
      type: 'string'
      default: ""
      description: "Add rule(s). i.e. line_ending,-full_opening_tag,@PSR2"
    phpcbf_path:
      title: "PHPCBF Path"
      type: 'string'
      default: ""
      description: "Path to the `phpcbf` CLI executable",
    standard:
      title: "PHPCBF Standard"
      type: 'string'
      default: "",
      description: "Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules. Will use local `phpcs.xml`, `phpcs.xml.dist`, `phpcs.ruleset.xml` or `ruleset.xml` if found in the project root."

}
