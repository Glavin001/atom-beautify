module.exports = {

    name: "C++"
    namespace: "cpp"

    ###
    Supported Grammars
    ###
    grammars: [
        "C++"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "h"
        "cpp"
    ]

    options:
        # C++
        cpp_uncrustifyPath:
            title: "C++ Uncrustify Path"
            type: 'string'
            default: ""
            description: "Path to the `uncrustify` CLI executable"
        cpp_configPath:
            title: "C++ Config Path"
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"


    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}