/* global atom */

'use strict';

var plugin = module.exports;
// Dependencies
var fs = require('fs');
var path = require('path');
// var nopt = require('nopt');
var _ = require('lodash');
var strip = require('strip-json-comments');
var yaml = require('js-yaml');
// Language options
var beautifier = require('./language-options');
var languages = beautifier.languages;
var defaultLanguageOptions = beautifier.defaultLanguageOptions;

// TODO: Copied from jsbeautify, please update it from time to time
var knownOpts = {
  // Beautifier
  'indent_size': Number,
  'indent_char': String,
  'indent_level': Number,
  'indent_with_tabs': Boolean,
  'indent_handlebars': Boolean,
  'preserve_newlines': Boolean,
  'max_preserve_newlines': Number,
  'space_in_paren': Boolean,
  'jslint_happy': Boolean,
  // TODO: expand-strict is obsolete, now identical to expand.  Remove in future version
  'brace_style': ['collapse', 'expand', 'end-expand', 'expand-strict'],
  'break_chained_methods': Boolean,
  'keep_array_indentation': Boolean,
  'unescape_strings': Boolean,
  'wrap_line_length': Number,
  'e4x': Boolean,
  // HTML-only
  'max_char': Number, // obsolete since 1.3.5
  'unformatted': [String, Array],
  'indent_inner_html': [Boolean],
  'indent_scripts': ['keep', 'separate', 'normal'],
  // CLI
  'version': Boolean,
  'help': Boolean,
  'files': [path, Array],
  'outfile': path,
  'replace': Boolean,
  'quiet': Boolean,
  'type': ['js', 'css', 'html'],
  'config': path
};

var Subscriber = require('emissary').Subscriber;
Subscriber.extend(plugin);

function getUserHome() {
  return process.env.HOME || process.env.HOMEPATH || process.env.USERPROFILE;
}

// function cleanOptions(data, types) {
//   nopt.clean(data, types);
//   return data;
// }

function getCursors(editor) {
  var cursors = editor.getCursors();
  var posArray = [];
  for (var idx = 0; idx < cursors.length; idx++) {
    var cursor = cursors[idx];
    var bufferPosition = cursor.getBufferPosition();
    posArray.push([bufferPosition.row, bufferPosition.column]);
  }
  return posArray;
}

function setCursors(editor, posArray) {
  for (var idx = 0; idx < posArray.length; idx++) {
    var bufferPosition = posArray[idx];
    if (idx === 0) {
      editor.setCursorBufferPosition(bufferPosition);
      continue;
    }
    editor.addCursorAtBufferPosition(bufferPosition);
  }
}

function verifyExists(fullPath) {
  return fs.existsSync(fullPath) ? fullPath : null;
}

// Storage for memoized results from find file
// Should prevent lots of directory traversal &
// lookups when liniting an entire project
var findFileResults = {};

/**
 * Searches for a file with a specified name starting with
 * 'dir' and going all the way up either until it finds the file
 * or hits the root.
 *
 * @param {string} name filename to search for (e.g. .jshintrc)
 * @param {string} dir  directory to start search from (default:
 *                      current working directory)
 *
 * @returns {string} normalized filename
 */
function findFile(name, dir) {
  dir = dir || process.cwd();

  var filename = path.normalize(path.join(dir, name));
  if (findFileResults[filename] !== undefined) {
    return findFileResults[filename];
  }

  var parent = path.resolve(dir, '../');

  if (verifyExists(filename)) {
    findFileResults[filename] = filename;
    return filename;
  }

  if (dir === parent) {
    findFileResults[filename] = null;
    return null;
  }

  return findFile(name, parent);
}

/**
 * Tries to find a configuration file in either project directory
 * or in the home directory. Configuration files are named
 * '.jsbeautifyrc'.
 *
 * @param {string} config   name of the configuration file
 * @param {string} file     path to the file to be linted
 * @returns {string} a path to the config file
 */
function findConfig(config, file) {
  var dir = path.dirname(path.resolve(file));
  var envs = getUserHome();
  var home = path.normalize(path.join(envs, config));

  var proj = findFile(config, dir);
  if (proj) {
    return proj;
  }

  if (verifyExists(home)) {
    return home;
  }

  return null;
}

function getConfigOptionsFromSettings(langs) {
  var config = atom.config.getSettings()['atom-beautify'];
  var options = {};
  // console.log(langs, config);

  // Iterate over keys of the settings
  _.every(_.keys(config), function (k) {
    // Check if keys start with a language
    var p = k.split('_')[0];
    var idx = _.indexOf(langs, p);
    // console.log(k, p, idx);
    if (idx >= 0) {
      // Remove the language prefix and nest in options
      var lang = langs[idx];
      var opt = k.replace(new RegExp('^' + lang + '_'), '');
      options[lang] = options[lang] || {};
      options[lang][opt] = config[k];
      // console.log(lang, opt);
    }
    return true;
  });
  // console.log(options);
  return options;
}

function beautify() {
  var text;
  var editor = atom.workspace.getActiveEditor();
  var isSelection = !!editor.getSelectedText();

  var softTabs = editor.softTabs;
  var tabLength = editor.getTabLength();
  var editorOptions = {
    'indent_size': softTabs ? tabLength : 1,
    'indent_char': softTabs ? ' ' : '\t',
    'indent_with_tabs': !softTabs
  };
  var configOptions = getConfigOptionsFromSettings(languages);

  // Look for .jsbeautifierrc in file and home path, check env variables
  var editedFilePath = editor.getPath();

  function getConfig(startPath) {
    // Verify that startPath is a string
    startPath = (typeof startPath === 'string') ? startPath : '';

    if (!startPath) {
      return {};
    }

    // Get the path to the config file
    var configPath = findConfig('.jsbeautifyrc', startPath);

    var externalOptions;
    if (configPath) {
      var contents = fs.readFileSync(configPath, {
        encoding: 'utf8'
      });
      if (!contents) {
        externalOptions = {};
      } else {
        try {
          externalOptions = JSON.parse(strip(contents));
        } catch (e) {
          console.log('Failed parsing config as JSON: ' + configPath);

          // Attempt as YAML
          try {
            externalOptions = yaml.safeLoad(contents);
          } catch (e) {
            console.log('Failed parsing config as YAML: ' + configPath);
            externalOptions = {};
          }

        }
      }
    } else {
      externalOptions = {};
    }
    return externalOptions;
  }

  // Get the path to the config file
  var projectOptions = getConfig(editedFilePath);
  var homeOptions = getConfig(getUserHome());

  if (isSelection) {
    text = editor.getSelectedText();
  } else {
    text = editor.getText();
  }
  var oldText = text;

  // All of the options
  // Listed in order from default (base) to the one with the highest priority
  // Left = Default, Right = Will override the left.
  var allOptions = [
    editorOptions, // Atom Editor
    configOptions, //
    homeOptions, // User's Home path
    projectOptions // Project path
  ];

  // Asynchronously and callback-style
  function beautifyCompleted(text) {
    if (oldText !== text) {
      var posArray = getCursors(editor);
      var origScrollTop = editor.getScrollTop();
      if (isSelection) {
        editor.setTextInBufferRange(
          editor.getSelectedBufferRange(),
          text
        );
      } else {
        editor.setText(text);
      }
      setCursors(editor, posArray);
      // Let the scrollTop setting run after all the save related stuff is run,
      // otherwise setScrollTop is not working, probably because the cursor
      // addition happens asynchronously
      setTimeout(function () {
        editor.setScrollTop(origScrollTop);
      }, 0);
    }
  }

  // Finally, beautify!
  beautifier.beautify(text, editor.getGrammar().name, allOptions, beautifyCompleted);

}

function handleSaveEvent() {
  atom.workspace.eachEditor(function (editor) {
    var buffer = editor.getBuffer();
    plugin.unsubscribe(buffer);

    if (atom.config.get('atom-beautify.beautifyOnSave')) {
      var events = 'will-be-saved';
      plugin.subscribe(buffer, events, beautify);
    }
  });
}

plugin.configDefaults = _.merge({
  analytics: true,
  beautifyOnSave: false
}, defaultLanguageOptions);

plugin.activate = function () {
  handleSaveEvent();
  plugin.subscribe(atom.config.observe(
    'atom-beautify.beautifyOnSave',
    handleSaveEvent));
  return atom.workspaceView.command('beautify', beautify);
};
