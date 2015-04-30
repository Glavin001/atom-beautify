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
        fixers:
            type: 'string'
            default: ""
            description: "Add fixer(s). i.e. linefeed,-short_tag,indentation"
        level:
            type: 'string'
            default: ""
            description: "By default, all PSR-2 fixers and some additional ones are run."

}