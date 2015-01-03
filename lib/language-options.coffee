###
Language Support and default options.
###
"use strict"
# Lazy loaded dependencies
_ = null
extend = null
# Language Beautifiers
beautifyJS = null
beautifyHTML = null
beautifyCSS = null
beautifySQL = null
beautifyPerl = null
beautifyPHP = null
beautifyPython = null
beautifyRuby = null
beautifyLESS = null
beautifyCoffeeScript = null
uncrustifyBeautifier = null
beautifyHTMLERB = null
beautifyMarkdown = null
beautifyTypeScript = null
Analytics = null

# Misc
{allowUnsafeEval} = require 'loophole'
allowUnsafeEval ->
  Analytics = require("analytics-node")
pkg = require("../package.json")

# Analytics
analyticsWriteKey = "u3c26xkae8"

# Get Atom defaults
tabLength = atom.config.get('editor.tabLength')
softTabs = atom.config.get('editor.softTabs')
defaultIndentSize = (if softTabs then tabLength else 1)
defaultIndentChar = (if softTabs then " " else "\t")
defaultIndentWithTabs = not softTabs

#
module.exports =

  # Supported unique configuration keys
  # Used for detecting nested configurations in .jsbeautifyrc
  languages: [
    "js"
    "html"
    "css"
    "sql"
    "perl"
    "php"
    "python"
    "ruby"
    "coffeescript"
    "c"
    "cpp"
    "cs"
    "markdown"
    "objectivec"
    "java"
    "d"
    "pawn"
    "vala"
    "typescript"
  ]

  # Default options per language
  defaultLanguageOptions:

    # jshint ignore: start

    # JavaScript
    js_indent_size:
        type: 'integer'
        default: defaultIndentSize
        minimum: 0
        description: "Indentation size/length"
    js_indent_char:
        type: 'string'
        default: defaultIndentChar
        minimum: 0
        description: "Indentation character"
    js_indent_level:
        type: 'integer'
        default: 0
        description: "Initial indentation level"
    js_indent_with_tabs:
        type: 'boolean'
        default: defaultIndentWithTabs
        description: "Indentation uses tabs, overrides `Indent Size` and `Indent Char`"
    js_preserve_newlines:
        type: 'boolean'
        default: true
        description: "Preserve line-breaks"
    js_max_preserve_newlines:
        type: 'integer'
        default: 10
        description: "Number of line-breaks to be preserved in one chunk"
    js_space_in_paren:
        type: 'boolean'
        default: false
        description: "Add padding spaces within paren, ie. f( a, b )"
    js_jslint_happy:
        type: 'boolean'
        default: false
        description: "Enable jslint-stricter mode"
    js_space_after_anon_function:
        type: 'boolean'
        default: false
        description: "Add a space before an anonymous function's parens, ie. function ()"
    js_brace_style:
        type: 'string'
        default: "collapse"
        enum: ["collapse", "expand", "end-expand", "none"]
        description: "[collapse|expand|end-expand|none]"
    js_break_chained_methods:
        type: 'boolean'
        default: false
        description: "Break chained method calls across subsequent lines"
    js_keep_array_indentation:
        type: 'boolean'
        default: false
        description: "Preserve array indentation"
    js_keep_function_indentation:
        type: 'boolean'
        default: false
        description: ""
    js_space_before_conditional:
        type: 'boolean'
        default: true
        description: ""
    js_eval_code:
        type: 'boolean'
        default: false
        description: ""
    js_unescape_strings:
        type: 'boolean'
        default: false
        description: "Decode printable characters encoded in xNN notation"
    js_wrap_line_length:
        type: 'integer'
        default: 0
        description: "Wrap lines at next opportunity after N characters"
    js_end_with_newline:
        type: 'boolean'
        default: false
        description: "End output with newline"

    # CSS
    css_indent_size:
        type: 'integer'
        default: defaultIndentSize
        minimum: 0
        description: "Indentation size/length"
    css_indent_char:
        type: 'string'
        default: defaultIndentChar
        minimum: 0
        description: "Indentation character"
    css_selector_separator_newline:
        type: 'boolean'
        default: false
        description: "Add a newline between multiple selectors"
    css_newline_between_rules:
        type: 'boolean'
        default: false
        description: "Add a newline between CSS rules"

    # HTML
    html_indent_inner_html:
        type: 'boolean'
        default: false
        description: "Indent <head> and <body> sections."
    html_indent_size:
        type: 'integer'
        default: defaultIndentSize
        minimum: 0
        description: "Indentation size/length"
    html_indent_char:
        type: 'string'
        default: defaultIndentChar
        minimum: 0
        description: "Indentation character"
    html_brace_style:
        type: 'string'
        default: "collapse"
        enum: ["collapse", "expand", "end-expand", "none"]
        description: "[collapse|expand|end-expand|none]"
    html_indent_scripts:
        type: 'string'
        default: "normal"
        enum: ["keep", "separate", "normal"]
        description: "[keep|separate|normal]"
    html_wrap_line_length:
        type: 'integer'
        default: 250
        description: "Maximum characters per line (0 disables)"
    html_preserve_newlines:
        type: 'boolean'
        default: true
        description: "Preserve line-breaks"
    html_max_preserve_newlines:
        type: 'integer'
        default: 10
        description: "Number of line-breaks to be preserved in one chunk"
    html_unformatted:
        type: 'array'
        default: ['a', 'sub', 'sup', 'b', 'i', 'u']
        items:
            type: 'string'
        description: "List of tags (defaults to inline) that should not be reformatted"
    html_end_with_newline:
        type: 'boolean'
        default: false
        description: "End output with newline"

    # SQL
    sql_indent_size:
        type: 'integer'
        default: defaultIndentSize
        minimum: 0
        description: "Indentation size/length"
    sql_keywords:
        type: 'string'
        default: "upper"
        description: "Change case of keywords"
        enum: ["lower","upper","capitalize"]
    sql_identifiers:
        type: 'string'
        default: "lower"
        description: "Change case of identifiers"
        enum: ["lower","upper","capitalize"]
    sql_sqlformat_path:
        type: 'string'
        default: ""
        description: "Path to the `sqlformat` CLI executable"

    # Markdown
    markdown_pandoc_path:
        type: 'string'
        default: ""
        description: "Path to the `pandoc` CLI executable"
    markdown_yaml_front_matter:
        type: 'boolean'
        default: true
        description: "Should also format YAML Front Matter (Jekyll) in Markdown"

    # Perl
    perl_perltidy_path:
        type: 'string'
        default: "perltidy"
        description: "Path to the `perltidy` CLI executable"
    perl_perltidy_profile:
        type: 'string'
        default: ""
        description: "Specify a configuration file which will override the default name of .perltidyrc"

    # PHP
    php_beautifier_path:
        type: 'string'
        default: ""
        description: "Path to the `PHP_Beautifier` CLI executable"
    php_filters:
        type: 'string'
        default: ""
        description: "Add filter(s). i.e. \"Filter1(setting1=value1,setting2=value2) Filter2()\""
    php_directory_filters:
        type: 'string'
        default: ""
        description: "Include dirs for filters"

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

    # Ruby
    ruby_rbeautify_path:
        type: 'string'
        default: ""
        description: "Path to the `rbeautify` CLI executable"

    # C
    c_uncrustifyPath:
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    c_configPath:
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # C++
    cpp_uncrustifyPath:
        title: "C++ Uncrustify Path"
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    cpp_configPath:
        title: "C++ Config Path"
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # Objective-C
    objectivec_uncrustifyPath:
        title: "Objective-C Uncrustify Path"
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    objectivec_configPath:
        title: "Objective-C Config Path"
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # C#
    cs_uncrustifyPath:
        title: "C# Uncrustify Path"
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    cs_configPath:
        title: "C# Config Path"
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # D
    d_uncrustifyPath:
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    d_configPath:
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # Java
    java_uncrustifyPath:
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    java_configPath:
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # Pawn
    pawn_uncrustifyPath:
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    pawn_configPath:
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

    # VALA
    vala_uncrustifyPath:
        type: 'string'
        default: ""
        description: "Path to the `uncrustify` CLI executable"
    vala_configPath:
        type: 'string'
        default: ""
        description: "Path to uncrustify config file. i.e. uncrustify.cfg"

  # jshint ignore: end

  # Process each language
  beautify: (text, grammar, allOptions, beautifyCompleted) ->
    self = this
    # Beautify!
    unsupportedGrammar = false
    options = undefined
    if atom.config.get("atom-beautify.disabledLanguages")?.indexOf(grammar) > - 1
      return beautifyCompleted(null)
    switch grammar
      # Treat JSON as JavaScript, because it will support comments.
      # And Glavin001 has tested JSON beauifying with beautifyJS.
      when "JSON", "JavaScript"
        beautifyJS ?= require("js-beautify")
        text = beautifyJS(text, self.getOptions("js", allOptions))
        beautifyCompleted text
      when "CoffeeScript"
        beautifyCoffeeScript ?= require("./langs/coffeescript-beautify")
        beautifyCoffeeScript text, self.getOptions("js", allOptions), beautifyCompleted
      when "Handlebars", "HTML (Mustache)"
        # jshint ignore: start
        allOptions.push indent_handlebars: true # Force jsbeautify to indent_handlebars
        # jshint ignore: end
        beautifyHTML ?= require("js-beautify").html
        text = beautifyHTML(text, self.getOptions("html", allOptions))
        beautifyCompleted text
      when "HTML (Liquid)", "HTML", "XML"
        beautifyHTML ?= require("js-beautify").html
        text = beautifyHTML(text, self.getOptions("html", allOptions))
        beautifyCompleted text
      when "HTML (Ruby - ERB)", "HTML (Rails)"
        beautifyHTMLERB ?= require("./langs/html-erb-beautify")
        beautifyHTMLERB text, self.getOptions("html", allOptions), beautifyCompleted
      when "CSS"
        beautifyCSS ?= require("js-beautify").css
        text = beautifyCSS(text, self.getOptions("css", allOptions))
        beautifyCompleted text
      when "Sass", "SCSS", "LESS"
        beautifyLESS ?= require("./langs/less-beautify")
        beautifyLESS text, self.getOptions("css", allOptions), beautifyCompleted
      when "SQL (Rails)", "SQL"
        beautifySQL ?= require("./langs/sql-beautify")
        beautifySQL text, self.getOptions("sql", allOptions), beautifyCompleted
      when "Perl"
        beautifyPerl ?= require("./langs/perl-beautify")
        beautifyPerl text, self.getOptions("perl", allOptions), beautifyCompleted
      when "PHP"
        beautifyPHP ?= require("./langs/php-beautify")
        beautifyPHP text, self.getOptions("php", allOptions), beautifyCompleted
      when "Python"
        beautifyPython ?= require("./langs/python-beautify")
        beautifyPython text, self.getOptions("python", allOptions), beautifyCompleted
      when "Ruby", "Ruby on Rails"
        beautifyRuby ?= require("./langs/ruby-beautify")
        beautifyRuby text, self.getOptions("ruby", allOptions), beautifyCompleted
      when "GitHub Markdown"
        beautifyMarkdown ?= require("./langs/markdown-beautify")
        beautifyMarkdown text, self.getOptions("markdown", allOptions), beautifyCompleted
      when "C"
        options = self.getOptions("c", allOptions)
        options.languageOverride = "C"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "C++"
        options = self.getOptions("cpp", allOptions)
        options.languageOverride = "CPP"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "C#"
        options = self.getOptions("cs", allOptions)
        options.languageOverride = "CS"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "Objective-C", "Objective-C++"
        options = self.getOptions("objectivec", allOptions)
        options.languageOverride = "OC+"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "D"
        options = self.getOptions("d", allOptions)
        options.languageOverride = "D"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "Pawn"
        options = self.getOptions("pawn", allOptions)
        options.languageOverride = "PAWN"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "Vala"
        options = self.getOptions("vala", allOptions)
        options.languageOverride = "VALA"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "Java"
        options = self.getOptions("java", allOptions)
        options.languageOverride = "JAVA"
        uncrustifyBeautifier ?= require("./langs/uncrustify/")
        uncrustifyBeautifier text, options, beautifyCompleted
      when "TypeScript"
        beautifyTypeScript ?= require("./langs/typescript-beautify")
        beautifyTypeScript text, self.getOptions("js", allOptions), beautifyCompleted
      else
        unsupportedGrammar = true

    # Check if Analytics is enabled
    if atom.config.get("atom-beautify.analytics")
      # Setup Analytics
      analytics = new Analytics(analyticsWriteKey)
      unless atom.config.get("atom-beautify._analyticsUserId")
        uuid = require("node-uuid")
        atom.config.set "atom-beautify._analyticsUserId", uuid.v4()
      # Setup Analytics User Id
      userId = atom.config.get("atom-beautify._analyticsUserId")
      analytics.identify userId: userId
      version = pkg.version
      analytics.track
        userId: atom.config.get("atom-beautify._analyticsUserId")
        event: "Beautify"
        properties:
          grammar: grammar
          version: version
          options: allOptions
          label: grammar
          category: version
    #
    if unsupportedGrammar
      if atom.config.get("atom-beautify.muteUnsupportedLanguageErrors")
        return beautifyCompleted(null)
      else
        throw new Error("Unsupported language for grammar '#{grammar}'.")
    return

  getOptions: (selection, allOptions) ->
    self = this
    _ ?= require("lodash")
    extend ?= require("extend")
    # console.log(selection, allOptions);
    # Reduce all options into correctly merged options.
    options = _.reduce(allOptions, (result, currOptions) ->
      containsNested = false
      collectedConfig = {}
      key = undefined
      # Check to see if config file uses nested object format to split up js/css/html options
      for key of currOptions
        # Check if is supported language
        if _.indexOf(self.languages, key) >= 0 and typeof currOptions[key] is "object" # Check if nested object (more options in value)
          containsNested = true
          break # Found, break out of loop, no need to continue
      # console.log(containsNested, currOptions);
      # Create a flat object of config options if nested format was used
      unless containsNested
        _.merge collectedConfig, currOptions
      else
        # Merge with selected options
        # where `selection` could be `html`, `js`, 'css', etc
        # console.log(selection, currOptions[selection]);
        _.merge collectedConfig, currOptions[selection]
      extend result, collectedConfig
    , {} )
    # TODO: Clean.
    # There is a bug in nopt
    # See https://github.com/npm/nopt/issues/38#issuecomment-45971505
    # console.log('pre-clean', JSON.stringify(options));
    #options = cleanOptions(options, knownOpts);
    #console.log('post-clean', JSON.stringify(options));
    options
