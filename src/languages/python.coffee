# Get Atom defaults
tabLength = atom.config.get('editor.tabLength')
softTabs = atom.config.get('editor.softTabs')
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

    name: "Python"
    namespace: "python"

    ###
    Supported Grammars
    ###
    grammars: [
        "Python"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "py"
    ]

    options:
        # Python
        python_autopep8_path:
            type: 'string'
            default: ""
            description: "Path to the `autopep8` CLI executable"
        python_max_line_length:
            type: 'integer'
            default: 79
            description: "set maximum allowed line length"
        python_indent_size:
          type: 'integer'
          default: defaultIndentSize
          minimum: 0
          description: "Indentation size/length"
        python_ignore:
            type: 'array'
            default: ["E24"]
            items:
                type: 'string'
            description: "do not fix these errors/warnings"


    ###
    Selected beautifier
    ###
    beautifier: "JS Beautifier"

}