module.exports = {

  name: "Python"
  namespace: "python"
  scope: ['source.python']

  ###
  Supported Grammars
  ###
  grammars: [
    "Python",
    "MagicPython"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "py"
  ]

  options:
    max_line_length:
      type: 'integer'
      default: 79
      description: "set maximum allowed line length"
    indent_size:
      type: 'integer'
      default: null
      minimum: 0
      description: "Indentation size/length"
    ignore:
      type: 'array'
      default: ["E24"]
      items:
        type: 'string'
      description: "do not fix these errors/warnings"
    formatter:
      type: 'string'
      default: 'autopep8'
      enum: ['autopep8', 'yapf']
      description: "formatter used by pybeautifier"
    style_config:
      type: 'string'
      default: 'pep8'
      description: "formatting style used by yapf"
    sort_imports:
      type: 'boolean'
      default: false
      description: "sort imports (requires isort installed)"
    multi_line_output:
      type: 'string'
      default: 'Hanging Grid Grouped'
      enum: [
        'Grid'
        'Vertical'
        'Hanging Indent'
        'Vertical Hanging Indent'
        'Hanging Grid'
        'Hanging Grid Grouped'
        'NOQA'
      ]
      description: "defines how from imports wrap (requires isort installed)"
}
