module.exports = {

    name: "D"
    namespace: "d"

    ###
    Supported Grammars
    ###
    grammars: [
        "D"
    ]

    ###
    Supported extensions
    ###
    extensions: [
    ]

    options:
        # D
        d_uncrustifyPath:
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        d_configPath:
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"



    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}