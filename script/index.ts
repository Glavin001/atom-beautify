import Unibeautify, {
  Option,
  Language,
  Beautifier,
  BeautifierOptionName,
  OptionsRegistry,
} from "unibeautify";
import * as _ from "lodash";
import * as path from "path";
import * as fs from "fs";
import beautifiers from "../src/beautifiers";

Unibeautify.loadBeautifiers(beautifiers);
writeOptionsJson();

function writeOptionsJson() {
  const languageOptions = buildOptions();
  const optionsString = JSON.stringify(languageOptions, null, 2);
  const outputFile = path.resolve(__dirname, "../dist/options.json");
  fs.writeFile(outputFile, optionsString, (error: Error) => {
    if (error) {
      throw error;
    }
  });
}

function buildOptions() {
  const options: AtomConfigRegistry = {};
  const exeOptions = buildExeOptions();
  options.Executables = {
    title: "Executables",
    description: "Configure paths for executables",
    type: "object",
    collapsed: true,
    order: 0,
    properties: exeOptions
  };
  const languages = Unibeautify.supportedLanguages;
  languages.forEach((lang, index) => {
    const langName: string = lang.name;
    if (!options[langName]) {
      const beautifiers = Unibeautify.getBeautifiersForLanguage(lang).map(beautifier => beautifier.name);
      const languageOptions = buildOptionsForLanguage(lang, beautifiers);
      options[langName] = {
        title: lang.name,
        type: "object",
        description: `Options for language ${lang.name}`,
        collapsed: true,
        order: index + 1,
        scope: lang.textMateScope,
        beautifiers: beautifiers,
        grammars: lang.atomGrammars,
        extensions: lang.extensions,
        properties: languageOptions
      };
    }
  });
  return options;
}

function buildExeOptions() {
  const exeOptions: AtomConfigRegistry = {};
  beautifiers.forEach(beautifier => {
    const dependencies = beautifier.dependencies;
    if (dependencies && dependencies.length !== 0) {
      dependencies.forEach(dependency => {
        if (dependency.type === "exec") {
          const dependencyName = dependency.name;
          exeOptions[dependencyName] = {
            title: dependencyName,
            type: "string",
            description: `Path to the ${dependencyName} program executable`,
            default: ""
          };
        }
      });
    }
  });
  return exeOptions;
}

function buildOptionsForLanguage(language: Language, beautifiers: String[]) {
  const languageOptions: AtomConfigRegistry = {};
  const optionsForLanguage: OptionsRegistry = Unibeautify.getOptionsSupportedForLanguage(language);
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
  });
  languageOptions.beautifiers = {
    title: "Beautifiers",
    type: "array",
    default: beautifiers,
    description: `Comma separated list of beautifiers to apply when beautifying ${language.name} code`,
    items: {
      type: "string"
    }
  };
  languageOptions.beautify_on_save = {
    title: `Beautify ${language.name} On Save`,
    type: "boolean",
    default: false,
    description: `Automatically beautify ${language.name} files on save`,
    order: -1
  };
  return languageOptions;
}

// tslint:disable:no-reserved-keywords
interface AtomConfig {
  title: string;
  type: "string" | "boolean" | "integer" | "array" | "object";
  default?: any;
  description: string;
  enum?: any[];
  minimum?: number;
  maximum?: number;
  items?: {
    type: string
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