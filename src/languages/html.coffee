module.exports = {

  name: "HTML"
  namespace: "html"
  scope: ['text.html']

  ###
  Supported Grammars
  ###
  grammars: [
    "HTML"
  ]

  ###
  Supported extensions
  ###
  extensions: [
    "html"
  ]

  options:
    indent_inner_html:
      type: 'boolean'
      default: false
      description: "Indent <head> and <body> sections."
    indent_size:
      type: 'integer'
      default: null
      minimum: 0
      description: "Indentation size/length"
    indent_char:
      type: 'string'
      default: null
      description: "Indentation character"
    brace_style:
      type: 'string'
      default: "collapse"
      enum: ["collapse", "expand", "end-expand", "none"]
      description: "[collapse|expand|end-expand|none]"
    indent_scripts:
      type: 'string'
      default: "normal"
      enum: ["keep", "separate", "normal"]
      description: "[keep|separate|normal]"
    wrap_line_length:
      type: 'integer'
      default: 250
      description: "Maximum characters per line (0 disables)"
    wrap_attributes:
      type: 'string'
      default: "auto"
      enum: ["auto", "aligned-multiple", "force", "force-aligned", "force-expand-multiline"]
      description: "Wrap attributes to new lines [auto|aligned-multiple|force|force-aligned|force-expand-multiline]"
    wrap_attributes_indent_size:
      type: 'integer'
      default: null
      minimum: 0
      description: "Indent wrapped attributes to after N characters"
    preserve_newlines:
      type: 'boolean'
      default: true
      description: "Preserve line-breaks"
    max_preserve_newlines:
      type: 'integer'
      default: 10
      description: "Number of line-breaks to be preserved in one chunk"
    unformatted:
      type: 'array'
      default: []
      items:
        type: 'string'
      description: "(Deprecated for most scenarios - consider inline or content_unformatted) List of tags that should not be reformatted at all.  NOTE: Set this to [] to get improved beautifier behavior."
    inline:
      type: 'array'
      default: [
            'a', 'abbr', 'area', 'audio', 'b', 'bdi', 'bdo', 'br', 'button', 'canvas', 'cite',
            'code', 'data', 'datalist', 'del', 'dfn', 'em', 'embed', 'i', 'iframe', 'img',
            'input', 'ins', 'kbd', 'keygen', 'label', 'map', 'mark', 'math', 'meter', 'noscript',
            'object', 'output', 'progress', 'q', 'ruby', 's', 'samp', 'select', 'small',
            'span', 'strong', 'sub', 'sup', 'svg', 'template', 'textarea', 'time', 'u', 'var',
            'video', 'wbr', 'text',
            'acronym', 'address', 'big', 'dt', 'ins', 'strike', 'tt'
        ]
      items:
        type: 'string'
      description: "List of inline tags. Behaves similar to text content, will not wrap without whitespace."
    content_unformatted:
      type: 'array'
      default: [ 'pre', 'textarea' ]
      items:
        type: 'string'
      description: "List of tags whose contents should not be reformatted. Attributes will be reformatted, inner html will not."
    end_with_newline:
      type: 'boolean'
      default: false
      description: "End output with newline"
    extra_liners:
      type: 'array'
      default: ['head', 'body', '/html']
      items:
        type: 'string'
      description: "List of tags (defaults to [head,body,/html] that should have an extra newline before them."

}
