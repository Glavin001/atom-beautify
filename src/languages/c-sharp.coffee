module.exports = {

    name: "C#"
    namespace: "cs"
    fallback: []

    ###
    Supported Grammars
    ###
    grammars: [
        "C#"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        'cs'
    ]

    options:
        # C#
        cs_uncrustifyPath:
            title: "C# Uncrustify Path"
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        cs_configPath:
            title: "C# Config Path"
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}