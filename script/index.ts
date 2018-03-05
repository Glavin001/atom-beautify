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
import beautifiers from "../src/beautifiers";

Unibeautify.loadBeautifiers(beautifiers);
writeOptionsJson();

function buildOptions() {
  let options: any = {};
  const languages = Unibeautify.supportedLanguages;
  languages.forEach(lang => {
    const langName: string = lang.name.toLowerCase();
    if (!options[langName]) {
      const beautifiers = Unibeautify.getBeautifiersForLanguage(lang).map(beautifier => beautifier.name);
      const languageOptions = buildOptionsForLanguage(lang, beautifiers);
      options[langName] = {
        title: lang.name,
        type: 'object',
        description: `Options for language ${lang.name}`,
        collapsed: true,
        scope: lang.textMateScope,
        beautifiers: beautifiers,
        grammars: lang.atomGrammars,
        extensions: lang.extensions,
        properties: languageOptions
      };
    }
  })
  return options;
}

function buildOptionsForLanguage(language: Language, beautifiers: String[]) {
  let languageOptions: any = {};
  let optionsForLanguage: OptionsRegistry = Unibeautify.getOptionsSupportedForLanguage(language);
  const options: OptionsRegistry[] = (Unibeautify as any).options;
  Object.keys(optionsForLanguage).forEach(key => {
    const option: Option = optionsForLanguage[key];
    const title = option.title ? option.title : key.split("_").map(_.capitalize).join(" ");
    languageOptions[key] = {
      title: title,
      type: option.type,
      default: option.default,
      description: option.description,
      enum: option.enum,
      minimum: option.minimum,
      maximum: option.maximum,
      items: option.items
    };
  })
  languageOptions["Beautifiers"] = {
    title: "Beautifiers",
    type: "array",
    default: beautifiers,
    items: {
      type: "string"
    }
  }
  languageOptions["beautify_on_save"] = {
    title: `Beautify ${language.name} On Save`,
    type: "boolean",
    default: false,
    description: `Automatically beautify ${language.name} files on save`,
    order: -1
  }
  return languageOptions;
}

function writeOptionsJson() {
  const languageOptions = buildOptions();
  let optionsString = JSON.stringify(languageOptions, null, 2);
  let outputFile = path.resolve(__dirname, '../dist/options.json');
  fs.writeFile(outputFile, optionsString, (error: Error) => {
    if (error) {
      throw error;
    }
  });
}
