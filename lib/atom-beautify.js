/* global atom */

'use strict';

var beautifyJS = require('js-beautify');
var beautifyHTML = require('js-beautify').html;
var beautifyCSS = require('js-beautify').css;
var fs = require('fs');
var path = require('path');
var cc = require('config-chain');
var nopt = require('nopt');
var extend = require('extend');

// TODO: Copied from jsbeautify, please update it from time to time
var knownOpts = {
  // Beautifier
  'indent_size': Number,
  'indent_char': String,
  'indent_level': Number,
  'indent_with_tabs': Boolean,
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
var plugin = module.exports;
Subscriber.extend(plugin);

function verifyExists(fullPath) {
  return fs.existsSync(fullPath) ? fullPath : null;
}

function findRecursive(dir, fileName) {
  var fullPath = path.join(dir, fileName);
  var nextDir = path.dirname(dir);
  var result = verifyExists(fullPath);

  if (!result && (nextDir !== dir)) {
    result = findRecursive(nextDir, fileName);
  }

  return result;
}

function getUserHome() {
  return process.env.HOME || process.env.USERPROFILE;
}

function cleanOptions(data, types) {
  nopt.clean(data, types);
  return data;
}

function beautify() {
  var text;
  var editor = atom.workspace.getActiveEditor();
  var isSelection = !! editor.getSelectedText();
  var softTabs = editor.softTabs;
  var tabLength = editor.getTabLength();

  var beautifyOptions = {
    'indent_size': softTabs ? tabLength : 1,
    'indent_char': softTabs ? ' ' : '\t'
  };

  // Look for .jsbeautifierrc in file and home path, check env variables
  var editedFilePath = editor.getPath();
  var cfg = cc(
    cleanOptions(cc.env('jsbeautify_'), knownOpts),
    editedFilePath ? findRecursive(path.dirname(editedFilePath),
      '.jsbeautifyrc') : null,
    verifyExists(path.join(getUserHome() || '', '.jsbeautifyrc'))
  ).list;
  // cc(...).snapshot SHOULD contain the same what I construct below,
  // however I have not the faintest idea why it doesn't work here.
  // It works at js-beautify cli, but not here. Weird.
  var collectedConfig = {};
  for (var idx = cfg.length - 1; idx >= 0; idx--) {
    collectedConfig = extend(cfg[idx], collectedConfig);
  }
  // Override the indenting options from the editor
  beautifyOptions = extend(collectedConfig, beautifyOptions);

  if (isSelection) {
    text = editor.getSelectedText();
  } else {
    text = editor.getText();
  }

  switch (editor.getGrammar().name) {
    case 'JavaScript':
      text = beautifyJS(text, beautifyOptions);
      break;
    case 'HTML':
    case 'XML':
      text = beautifyHTML(text, beautifyOptions);
      break;
    case 'CSS':
      text = beautifyCSS(text, beautifyOptions);
      break;
    default:
      return;
  }

  if (isSelection) {
    editor.setTextInBufferRange(
      editor.getSelectedBufferRange(),
      text
    );
  } else {
    editor.setText(text);
  }
}

function handleSafeEvent() {
  atom.workspace.eachEditor(function(editor) {
    var buffer = editor.getBuffer();
    plugin.unsubscribe(buffer);

    if (atom.config.get('atom-beautify.beautifyOnSave')) {
      var events = 'will-be-saved';
      plugin.subscribe(buffer, events, beautify);
    }
  });
}

plugin.configDefaults = {
  beautifyOnSave: false
};

plugin.activate = function() {
  handleSafeEvent();
  plugin.subscribe(atom.config.observe(
    'atom-beautify.beautifyOnSave',
    handleSafeEvent));
  return atom.workspaceView.command('beautify', beautify);
};