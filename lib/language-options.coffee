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
    js_indent_size: 2
    js_indent_char: " "
    js_indent_level: 0
    js_indent_with_tabs: false
    js_preserve_newlines: true
    js_max_preserve_newlines: 10
    js_jslint_happy: false
    js_brace_style: "collapse"
    js_keep_array_indentation: false
    js_keep_function_indentation: false
    js_space_before_conditional: true
    js_break_chained_methods: false
    js_eval_code: false
    js_unescape_strings: false
    js_wrap_line_length: 0

    # CSS
    css_indent_size: 2
    css_indent_Char: " "

    # HTML
    html_indent_inner_html: false
    html_indent_size: 2
    html_indent_char: " "
    html_brace_style: "collapse"
    html_indent_scripts: "normal"
    html_wrap_line_length: 250

    # SQL
    sql_indent_size: 2
    sql_keywords: "upper"
    sql_identifiers: "lower"
    sql_sqlformat_path: ""

    # Markdown
    markdown_pandoc_path: ""

    # Perl
    perl_perltidy_path: "perltidy"
    perl_perltidy_profile: ""

    # PHP
    php_beautifier_path: ""

    # Python
    python_autopep8_path: ""
    python_max_line_length: 79
    python_indent_size: 4
    python_ignore: ["E24"]

    # Ruby
    ruby_rbeautify_path: ""

    # C
    c_uncrustifyPath: ""
    c_configPath: ""

    # C++
    cpp_uncrustifyPath: ""
    cpp_configPath: ""

    # Objective-C
    objectivec_uncrustifyPath: ""
    objectivec_configPath: ""

    # C#
    cs_uncrustifyPath: ""
    cs_configPath: ""

    # D
    d_uncrustifyPath: ""
    d_configPath: ""

    # Java
    java_uncrustifyPath: ""
    java_configPath: ""

    # Pawn
    pawn_uncrustifyPath: ""
    pawn_configPath: ""

    # VALA
    vala_uncrustifyPath: ""
    vala_configPath: ""

  # jshint ignore: end

  # Process each language
  beautify: (text, grammar, allOptions, beautifyCompleted) ->
    self = this
    # Beautify!
    unsupportedGrammar = false
    options = undefined
    if atom.config.get("atom-beautify.disabledLanguages").indexOf(grammar) > - 1
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
