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
        configPath:
            title: "C# Config Path"
            type: 'string'
            default: ""
            description: "Path to uncrustify config file. i.e. uncrustify.cfg"

}