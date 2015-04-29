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
    ]

    options:
        # PHP
        php_cs_fixer_path:
            type: 'string'
            default: ""
            description: "Path to the `php-cs-fixer` CLI executable"
        php_fixers:
            type: 'string'
            default: ""
            description: "Add fixer(s). i.e. linefeed,-short_tag,indentation"
        php_level:
            type: 'string'
            default: ""
            description: "By default, all PSR-2 fixers and some additional ones are run."

    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}