module.exports = {

    name: "Perl"
    namespace: "perl"

    ###
    Supported Grammars
    ###
    grammars: [
        "Perl", "Perl 6"
    ]

    ###
    Supported extensions
    ###
    extensions: [
    ]

    options:
        # Perl
        perl_perltidy_path:
            type: 'string'
            default: "perltidy"
            description: "Path to the `perltidy` CLI executable"
        perl_perltidy_profile:
            type: 'string'
            default: ""
            description: "Specify a configuration file which will override the default name of .perltidyrc"


    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}