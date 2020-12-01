import Unibeautify, {
  Option,
  Language,
  OptionsRegistry
} from "unibeautify";
import * as _ from "lodash";
import * as path from "path";
import * as fs from "fs";
import { beautifiers } from "../src/beautifiers";

Unibeautify.loadBeautifiers(beautifiers);

const buildOptions = () => {
  const options: AtomConfigRegistry = {};
  const languages = Unibeautify.supportedLanguages;
  languages.forEach(lang => {
    const langName: string = lang.name;
    if (!options[langName]) {
      const beautifiers = Unibeautify.getBeautifiersForLanguage(lang).map(beautifier => beautifier.name);
      const languageOptions = buildOptionsForLanguage(lang, beautifiers);
      options[langName] = {
        title: lang.name,
        type: "object",
        description: `Options for language ${lang.name}`,
        collapsed: true,
        scope: lang.textMateScope,
        beautifiers: beautifiers,
        grammars: lang.atomGrammars,
        extensions: lang.extensions,
        properties: languageOptions
      };
    }
  });
  return options;
};

const buildOptionsForLanguage = (language: Language, beautifiers: String[]) => {
  const languageOptions: AtomConfigRegistry = {};
  const optionsForLanguage: OptionsRegistry = Unibeautify.getOptionsSupportedForLanguage(language);
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
  });
  languageOptions["beautifiers"] = {
    title: "Beautifiers",
    type: "array",
    default: beautifiers,
    description: `Comma separated list of beautifiers to apply when beautifying ${language.name} code`,
    items: {
      type: "string"
    }
  };
  languageOptions["beautify_on_save"] = {
    title: `Beautify ${language.name} On Save`,
    type: "boolean",
    default: false,
    description: `Automatically beautify ${language.name} files on save`,
    order: -1
  };
  return languageOptions;
};

const writeOptionsJson = () => {
  const languageOptions = buildOptions();
  const optionsString = JSON.stringify(languageOptions, null, 2);
  const outputFile = path.resolve(__dirname, "../dist/options.json");
  fs.writeFile(outputFile, optionsString, (error: Error) => {
    if (error) {
      throw error;
    }
  });
};
writeOptionsJson();

interface AtomConfig {
  title: string;
  type: "string" | "boolean" | "integer" | "array" | "object";
  default?: any;
  description: string;
  enum?: any[];
  minimum?: number;
  maximum?: number;
  items?: {
    type: string;
  };
  collapsed?: boolean;
  scope?: string;
  beautifiers?: String[];
  grammars?: string[];
  extensions?: string[];
  properties?: any;
  order?: number;
}

interface AtomConfigRegistry {
  [key: string]: AtomConfig;
}
