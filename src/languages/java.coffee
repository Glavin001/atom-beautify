module.exports = {

    name: "Java"
    namespace: "java"

    ###
    Supported Grammars
    ###
    grammars: [
        "Java"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "java"
    ]

    options:
        # Java
        java_uncrustifyPath:
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        java_configPath:
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}