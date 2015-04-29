module.exports = {

    name: "Vala"
    namespace: "vala"

    ###
    Supported Grammars
    ###
    grammars: [
        "Vala"
    ]

    ###
    Supported extensions
    ###
    extensions: []

    options:
        # VALA
        vala_uncrustifyPath:
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        vala_configPath:
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"



    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}