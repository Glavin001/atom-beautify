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
    cs_fixer_version:
      title: "PHP-CS-Fixer Version"
      type: 'integer'
      default: 2
      enum: [1, 2]
    fixers:
      type: 'string'
      default: ""
      description: "Add fixer(s). i.e. linefeed,-short_tag,indentation (PHP-CS-Fixer 1 only)"
    level:
      type: 'string'
      default: ""
      description: "By default, all PSR-2 fixers and some additional ones are run. (PHP-CS-Fixer 1 only)"
    rules:
      type: 'string'
      default: ""
      description: "Add rule(s). i.e. line_ending,-full_opening_tag,@PSR2 (PHP-CS-Fixer 2 only)"
    allow_risky:
      title: "Allow risky rules"
      type: 'string'
      default: "no"
      enum: ["no", "yes"]
      description: "allow risky rules to be applied (PHP-CS-Fixer 2 only)"
    phpcbf_path:
      title: "PHPCBF Path"
      type: 'string'
      default: ""
      description: "Path to the `phpcbf` CLI executable",
    phpcbf_version:
      title: "PHPCBF Version"
      type: 'integer'
      default: 2
      enum: [1, 2, 3]
    standard:
      title: "PHPCBF Standard"
      type: 'string'
      default: "PEAR",
      description: "Standard name Squiz, PSR2, PSR1, PHPCS, PEAR, Zend, MySource... or path to CS rules. Will use local `phpcs.xml`, `phpcs.xml.dist`, `phpcs.ruleset.xml` or `ruleset.xml` if found in the project root."

}
