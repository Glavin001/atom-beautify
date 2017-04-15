module.exports = {

  name: "LaTeX"
  namespace: "latex"
  scope: ['source.tex']

  ###
  Supported Grammars
  ###
  grammars: [
    "LaTeX"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "tex"
  ]

  defaultBeautifier: "Latex Beautify"

  ###

  ###
  options:
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    indent_with_tabs:
      type: 'boolean'
      default: null
      description: "Indentation uses tabs, overrides `Indent Size` and `Indent Char`"
    indent_preamble:
      type: 'boolean'
      default: false
      description: "Indent the preable"
    always_look_for_split_braces:
      type: 'boolean'
      default: true
      description: "If `latexindent` should look for commands that split braces across lines"
    always_look_for_split_brackets:
      type: 'boolean'
      default: false
      description: "If `latexindent` should look for commands that split brackets across lines"
    remove_trailing_whitespace:
      type: 'boolean'
      default: false
      description: "Remove trailing whitespace"
    align_columns_in_environments:
      type: 'array'
      default:["tabular", "matrix", "bmatrix", "pmatrix"]
      decription: "Aligns columns by the alignment tabs for environments specified"
}
