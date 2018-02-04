import Unibeautify, {
  Option,
  Language,
  Beautifier,
  BeautifierOptionName,
  OptionsRegistry,
} from "unibeautify";
import * as _ from "lodash";
let path = require('path');
let fs = require('fs');
import beautifiers from "./beautifiers";

Unibeautify.loadBeautifiers(beautifiers);
writeOptionsJson();

function buildOptionsForLanguages() {
  let options: any = {};
  const languages = Unibeautify.supportedLanguages;
  languages.forEach(lang => {
    let namespace = lang.namespace;
    if (!options[namespace] || options[namespace] !== "") {
      options[namespace] = {
        title: lang.name,
        type: 'object',
        description: `Options for language ${lang.name}`,
        collapsed: true,
        scope: lang.textMateScope,
        beautifiers: [],
        grammars: lang.atomGrammars,
        extensions: lang.extensions,
        properties: {
          "disabled": {
            title: "Disable Beautifying Language",
            order: -3,
            type: 'boolean',
            default: false,
            description: "Disable " + lang.name + " Beautification"
          }
        }
      };
    }
  })
  return options;
}

function writeOptionsJson() {
  const languageOptions = buildOptionsForLanguages();
  let optionsString = JSON.stringify(languageOptions, null, 2);
  let outputFile = path.resolve(__dirname, '../dist/options.json');
  fs.writeFile(outputFile, optionsString, (error) => {
    if (error) {
      throw error;
    }
  });
}
