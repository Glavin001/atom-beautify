/* global atom */

'use strict';

var beautifyJS = require('js-beautify');
var beautifyHTML = require('js-beautify').html;
var beautifyCSS = require('js-beautify').css;

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

exports.activate = function() {
  return atom.workspaceView.command('beautify', beautify);
};
