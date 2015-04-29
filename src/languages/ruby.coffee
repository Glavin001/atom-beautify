module.exports = {

    name: "Ruby"
    namespace: "ruby"

    ###
    Supported Grammars
    ###
    grammars: [
        "Ruby"
        "Ruby on Rails"
    ]

    ###
    Supported extensions
    ###
    extensions: []

    options:
        # Ruby
        ruby_rbeautify_path:
            type: 'string'
            default: ""
            description: "Path to the `rbeautify` CLI executable"


    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}