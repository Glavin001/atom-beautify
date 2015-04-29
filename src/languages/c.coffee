module.exports = {

    name: "C"
    namespace: "c"

    ###
    Supported Grammars
    ###
    grammars: [
        "C"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "c"
    ]

    options:
        # C
        c_uncrustifyPath:
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        c_configPath:
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}