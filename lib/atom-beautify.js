/* global atom */

'use strict';

var beautifyJS = require('js-beautify');
var beautifyHTML = require('js-beautify').html;
var beautifyCSS = require('js-beautify').css;
var fs = require('fs');
var path = require('path');
var nopt = require('nopt');
var extend = require('extend');
var _ = require('lodash');

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

function beautify() {
  var text;
  var editor = atom.workspace.getActiveEditor();
  var isSelection = !! editor.getSelectedText();
  var softTabs = editor.softTabs;
  var tabLength = editor.getTabLength();

  var beautifyOptions = {
    'indent_size': softTabs ? tabLength : 1,
    'indent_char': softTabs ? ' ' : '\t',
    'indent_with_tabs': !softTabs
  };

  // Look for .jsbeautifierrc in file and home path, check env variables
  var editedFilePath = editor.getPath();
  var rcInRecursiveCwd;
  if (editedFilePath && (rcInRecursiveCwd = findRecursive(path.dirname(
    editedFilePath), '.jsbeautifyrc')) === editedFilePath) {
    rcInRecursiveCwd = null;
  }
  var rcInHomePath;
  if (editedFilePath && (rcInHomePath = verifyExists(path.join(getUserHome() ||
    '', '.jsbeautifyrc'))) === editedFilePath) {
    rcInHomePath = null;
  }

  var externalOptions;

  if (rcInRecursiveCwd) {
    externalOptions = JSON.parse(fs.readFileSync(rcInRecursiveCwd, {
      encoding: 'utf8'
    }));
  } else if (rcInHomePath) {
    externalOptions = JSON.parse(fs.readFileSync(rcInHomePath, {
      encoding: 'utf8'
    }));
  } else {
    externalOptions = {};
  }

  var containsNested = false;
  var collectedConfig = {};
  var key;

  // Check to see if config file uses nested object format to split up js/css/html options
  for (key in externalOptions) {
    if (typeof externalOptions[key] === 'object') {
      containsNested = true;
    }
  }

  // Create a flat object of config options if nested format was used
  if (!containsNested) {
    collectedConfig = externalOptions;
  } else {
    for (key in externalOptions) {
      _.merge(collectedConfig, externalOptions[key]);
    }
  }

  beautifyOptions = extend(collectedConfig, beautifyOptions);
  beautifyOptions = cleanOptions(beautifyOptions, knownOpts);

  if (isSelection) {
    text = editor.getSelectedText();
  } else {
    text = editor.getText();
  }
  var oldText = text;

  switch (editor.getGrammar().name) {
  case 'JavaScript':
    text = beautifyJS(text, beautifyOptions);
    break;
  case 'HTML (Liquid)':
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

function handleSafeEvent() {
  atom.workspace.eachEditor(function (editor) {
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

plugin.activate = function () {
  handleSafeEvent();
  plugin.subscribe(atom.config.observe(
    'atom-beautify.beautifyOnSave',
    handleSafeEvent));
  return atom.workspaceView.command('beautify', beautify);
};
