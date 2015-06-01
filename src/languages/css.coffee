# Get Atom defaults
tabLength = atom?.config.get('editor.tabLength') ? 4 
softTabs = atom?.config.get('editor.softTabs') ? true
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

module.exports = {

    name: "CSS"
    namespace: "css"

    ###
    Supported Grammars
    ###
    grammars: [
        "CSS"
    ]

    ###
    Supported extensions
    ###
    extensions: [
        "css"
    ]

    defaultBeautifier: "JS Beautify"

    options:
        # CSS
        indent_size:
            type: 'integer'
            default: defaultIndentSize
            minimum: 0
            description: "Indentation size/length"
        indent_char:
            type: 'string'
            default: defaultIndentChar
            minimum: 0
            description: "Indentation character"
        selector_separator_newline:
            type: 'boolean'
            default: false
            description: "Add a newline between multiple selectors"
        newline_between_rules:
            type: 'boolean'
            default: false
            description: "Add a newline between CSS rules"
        preserve_newlines:
            type: 'boolean'
            default: false
            description: "Retain empty lines. "+
                "Consecutive empty lines will be converted to a single empty line."

}