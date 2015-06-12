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
        "Consecutive empty lines will be converted to \
                a single empty line."
    wrap_line_length:
      type: 'integer'
      default: 0
      description: "Maximum amount of characters per line (0 = disable)"
    indent_comments:
      type: 'boolean'
      default: true
      description: "Determines whether comments should be indented."
    force_indentation:
      type: 'boolean'
      default: false
      description: "if indentation should be forcefully applied to\
                markup even if it disruptively adds unintended whitespace \
                to the documents rendered output"
    convert_quotes:
      type: 'string'
      default: "none"
      description: "Convert the quote characters delimiting strings \
                from either double or single quotes to the other."
      enum: ["none", "double", "single"]
    align_assignments:
      type: 'boolean'
      default: false
      description: "If lists of assignments or properties should be \
                vertically aligned for faster and easier reading."

}
