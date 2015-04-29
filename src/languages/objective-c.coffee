module.exports = {

    name: "Objective-C"
    namespace: "objectivec"
    fallback: []

    ###
    Supported Grammars
    ###
    grammars: [
        "Objective-C"
        "Objective-C++"
    ]

    ###
    Supported extensions
    ###
    extensions: [

    ]

    options:
        # Objective-C
        objectivec_uncrustifyPath:
            title: "Objective-C Uncrustify Path"
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        objectivec_configPath:
            title: "Objective-C Config Path"
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"



    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}