module.exports = {

    name: "Markdown"
    namespace: "markdown"

    ###
    Supported Grammars
    ###
    grammars: [
        "GitHub Markdown"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "markdown"
        "md"
    ]

    options:
        # Markdown
        markdown_pandoc_path:
            type: 'string'
            default: ""
            description: "Path to the `pandoc` CLI executable"
        markdown_yaml_front_matter:
            type: 'boolean'
            default: true
            description: "Should also format YAML Front Matter (Jekyll) in Markdown"


    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}