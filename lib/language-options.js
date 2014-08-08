/**
Language Support and default options.
*/

'use strict';

var _ = require('lodash');
var extend = require('extend');
// Language Beautifiers
var beautifyJS = require('js-beautify');
var beautifyHTML = require('js-beautify').html;
var beautifyCSS = require('js-beautify').css;
var beautifySQL = require('./langs/sql-beautify');
var beautifyPHP = require('./langs/php-beautify');
var beautifyPython = require('./langs/python-beautify');
var beautifyRuby = require('./langs/ruby-beautify');
var beautifyLESS = require('./langs/less-beautify');
var beautifyCoffeeScript = require('./langs/coffeescript-beautify');
var uncrustifyBeautifier = require('./langs/uncrustify/');
// Misc
var Analytics = require('analytics-node');
var pkg = require('../package.json');
// Analytics
var analyticsWriteKey = 'u3c26xkae8';

module.exports = {

  // Supported unique configuration keys
  // Used for detecting nested configurations in .jsbeautifyrc
  languages: [
    'js',
    'html',
    'css',
    'sql',
    'php',
    'python',
    'ruby',
    'coffeescript',
    'c',
    'cpp',
    'cs',
    'objectivec',
    'java',
    'd',
    'pawn',
    'vala'
  ],

  // Default options per language
  defaultLanguageOptions: {
    /* jshint ignore: start */
    // JavaScript
    js_indent_size: 2,
    js_indent_char: ' ',
    js_indent_level: 0,
    js_indent_with_tabs: false,
    js_preserve_newlines: true,
    js_max_preserve_newlines: 10,
    js_jslint_happy: false,
    js_brace_style: 'collapse',
    js_keep_array_indentation: false,
    js_keep_function_indentation: false,
    js_space_before_conditional: true,
    js_break_chained_methods: false,
    js_eval_code: false,
    js_unescape_strings: false,
    js_wrap_line_length: 0,
    // CSS
    css_indent_size: 2,
    css_indent_Char: ' ',
    // HTML
    html_indent_inner_html: false,
    html_indent_size: 2,
    html_indent_char: ' ',
    html_brace_style: 'collapse',
    html_indent_scripts: 'normal',
    html_wrap_line_length: 250,
    // SQL
    sql_indent_size: 2,
    sql_indent_char: ' ',
    // PHP
    php_beautifier_path: '',
    // Python
    python_autopep8_path: '',
    python_max_line_length: 79,
    python_indent_size: 4,
    python_ignore: ['E24'],
    // Ruby
    ruby_rbeautify_path: '',
    // C
    c_configPath: '',
    // C++
    cpp_configPath: '',
    // Objective-C
    objectivec_configPath: '',
    // C#
    cs_configPath: '',
    // Objective-C
    d_configPath: '',
    // Java
    java_configPath: '',
    // Pawn
    pawn_configPath: '',
    // VALA
    vala_configPath: ''
    /* jshint ignore: end */
  },

  // Process each language
  beautify: function (text, grammar, allOptions, beautifyCompleted) {
    var self = this;
    // Beautify!
    var unsupportedGrammar = false;
    var options;
    switch (grammar) {
    case 'JSON':
      // Treat JSON as JavaScript, because it will support comments.
      // And Glavin001 has tested JSON beauifying with beautifyJS.
    case 'JavaScript':
      text = beautifyJS(text, self.getOptions('js', allOptions));
      beautifyCompleted(text);
      break;
    case 'CoffeeScript':
      beautifyCoffeeScript(text, self.getOptions('js', allOptions),
        beautifyCompleted);
      break;
    case 'Handlebars':
      // jshint ignore: start
      allOptions.push({
        indent_handlebars: true // Force jsbeautify to indent_handlebars
      });
      // jshint ignore: end
    case 'HTML (Liquid)':
    case 'HTML':
    case 'XML':
      text = beautifyHTML(text, self.getOptions('html', allOptions));
      beautifyCompleted(text);
      break;
    case 'CSS':
      text = beautifyCSS(text, self.getOptions('css', allOptions));
      beautifyCompleted(text);
      break;
    case 'Sass':
    case 'SCSS':
    case 'LESS':
      beautifyLESS(text, self.getOptions('css', allOptions), beautifyCompleted);
      break;
    case 'SQL (Rails)':
    case 'SQL':
      text = beautifySQL(text, self.getOptions('sql', allOptions));
      beautifyCompleted(text);
      break;
    case 'PHP':
      beautifyPHP(text, self.getOptions('php', allOptions), beautifyCompleted);
      break;
    case 'Python':
      beautifyPython(text, self.getOptions('python', allOptions),
        beautifyCompleted);
      break;
    case 'Ruby':
      beautifyRuby(text, self.getOptions('ruby', allOptions), beautifyCompleted);
      break;
    case 'C':
      options = self.getOptions('c', allOptions);
      options.languageOverride = 'C';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'C++':
      options = self.getOptions('cpp', allOptions);
      options.languageOverride = 'CPP';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'C#':
      options = self.getOptions('cs', allOptions);
      options.languageOverride = 'CS';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'Objective-C':
    case 'Objective-C++':
      options = self.getOptions('objectivec', allOptions);
      options.languageOverride = 'OC+';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'D':
      options = self.getOptions('d', allOptions);
      options.languageOverride = 'D';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'Pawn':
      options = self.getOptions('pawn', allOptions);
      options.languageOverride = 'PAWN';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'Vala':
      options = self.getOptions('vala', allOptions);
      options.languageOverride = 'VALA';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    case 'Java':
      options = self.getOptions('java', allOptions);
      options.languageOverride = 'JAVA';
      uncrustifyBeautifier(text, options,
        beautifyCompleted);
      break;
    default:
      unsupportedGrammar = true;
    }

    // Check if Analytics is enabled
    if (atom.config.get('atom-beautify.analytics')) {
      // Setup Analytics
      var analytics = new Analytics(analyticsWriteKey);
      if (!atom.config.get('atom-beautify._analyticsUserId')) {
        var uuid = require('node-uuid');
        atom.config.set('atom-beautify._analyticsUserId', uuid.v4());
      }
      // Setup Analytics User Id
      var userId = atom.config.get('atom-beautify._analyticsUserId');
      analytics.identify({
        userId: userId
      });
      var version = pkg.version;
      analytics.track({
        userId: atom.config.get('atom-beautify._analyticsUserId'),
        event: 'Beautify',
        properties: {
          grammar: grammar,
          version: version,
          options: allOptions,
          label: grammar,
          category: version
        }
      });
    }

  },

  getOptions: function (selection, allOptions) {
    var self = this;
    // console.log(selection, allOptions);

    // Reduce all options into correctly merged options.
    var options = _.reduce(allOptions, function (result, currOptions) {

      var containsNested = false;
      var collectedConfig = {};
      var key;

      // Check to see if config file uses nested object format to split up js/css/html options
      for (key in currOptions) {
        if (_.indexOf(self.languages, key) >= 0 && // Check if is supported language
          typeof currOptions[key] === 'object') { // Check if nested object (more options in value)
          containsNested = true;
          break; // Found, break out of loop, no need to continue
        }
      }

      // console.log(containsNested, currOptions);

      // Create a flat object of config options if nested format was used
      if (!containsNested) {
        _.merge(collectedConfig, currOptions);
      } else {
        // Merge with selected options
        // where `selection` could be `html`, `js`, 'css', etc
        // console.log(selection, currOptions[selection]);
        _.merge(collectedConfig, currOptions[selection]);
      }

      return extend(result, collectedConfig);

    }, {});

    // TODO: Clean.
    // There is a bug in nopt
    // See https://github.com/npm/nopt/issues/38#issuecomment-45971505
    // console.log('pre-clean', JSON.stringify(options));
    //options = cleanOptions(options, knownOpts);
    //console.log('post-clean', JSON.stringify(options));

    return options;
  }
};
