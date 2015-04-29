module.exports = {

    name: "Pawn"
    namespace: "pawn"

    ###
    Supported Grammars
    ###
    grammars: [
        "Pawn"
    ]

    ###
    Supported extensions
    ###
    extensions: []

    options:
        # Pawn
        pawn_uncrustifyPath:
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        pawn_configPath:
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"



    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}