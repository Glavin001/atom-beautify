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
  const languageOptions = buildLanguageOptions();
  const languages = {
    title: "Languages",
    description: "Configure languages",
    type: "object",
    collapsed: true,
    order: 1,
    properties: languageOptions,
  };
  const beautifierOptions = buildBeautifierOptions();
  const beautifiers = {
    title: "Beautifiers",
    description: "Configure beautifiers",
    type: "object",
    collapsed: true,
    order: 2,
    properties: beautifierOptions,
  };
  const allOptions = JSON.stringify({ languages, beautifiers }, null, 2);
  const outputFile = path.resolve(__dirname, "../dist/options.json");
  fs.writeFile(outputFile, allOptions, (error: Error) => {
    if (error) {
      throw error;
    }
  });
}

function buildLanguageOptions() {
  const languageOptions: AtomConfigRegistry = {};
  const languages = Unibeautify.supportedLanguages;
  languages.forEach((lang, index) => {
    const langName: string = lang.name;
    if (!languageOptions[langName]) {
      const beautifiers = Unibeautify.getBeautifiersForLanguage(lang).map(
        beautifier => beautifier.name
      );
      const languageProperties = buildOptionsForLanguage(lang, beautifiers);
      languageOptions[langName] = {
        title: lang.name,
        type: "object",
        description: `Options for language ${lang.name}`,
        collapsed: true,
        order: index,
        scope: lang.textMateScope,
        beautifiers: beautifiers,
        grammars: lang.atomGrammars,
        extensions: lang.extensions,
        properties: languageProperties,
      };
    }
  });
  return languageOptions;
}

function buildOptionsForLanguage(language: Language, beautifiers: String[]) {
  const languageOptions: AtomConfigRegistry = {};
  const optionsForLanguage: OptionsRegistry = Unibeautify.getOptionsSupportedForLanguage(
    language
  );
  const options: OptionsRegistry[] = (Unibeautify as any).options;
  Object.keys(optionsForLanguage).forEach(key => {
    const option: Option = optionsForLanguage[key];
    const title = option.title
      ? option.title
      : key
          .split("_")
          .map(_.capitalize)
          .join(" ");
    languageOptions[key] = {
      title: title,
      type: option.type,
      default: option.default,
      description: option.description,
      enum: option.enum,
      minimum: option.minimum,
      maximum: option.maximum,
      items: option.items,
    };
  });
  languageOptions.beautifiers = {
    title: "Beautifiers",
    type: "array",
    default: beautifiers,
    description: `Comma separated list of beautifiers to apply when beautifying ${
      language.name
    } code`,
    items: {
      type: "string",
    },
  };
  languageOptions.beautify_on_save = {
    title: `Beautify ${language.name} On Save`,
    type: "boolean",
    default: false,
    description: `Automatically beautify ${language.name} files on save`,
    order: -1,
  };
  return languageOptions;
}

function buildBeautifierOptions() {
  const beautifierOptions: AtomConfigRegistry = {};
  beautifiers.forEach((beautifier, index) => {
    const beautifierProperties = buildOptionsForBeautifier(beautifier);
    beautifierOptions[beautifier.name] = {
      title: beautifier.name,
      description: `Configure ${beautifier.name}`,
      type: "object",
      collapsed: true,
      order: index,
      properties: beautifierProperties,
    };
  });
  return beautifierOptions;
}

function buildOptionsForBeautifier(beautifier: Beautifier) {
  const beautifierOptions: AtomConfigRegistry = {};
  if (beautifier.resolveConfig) {
    beautifierOptions.prefer_beautifier_config = {
      title: `Prefer ${beautifier.name} Config`,
      type: "boolean",
      description: `Use ${
        beautifier.name
      } config file in place of Atom or Unibeautify settings`,
      default: false,
    };
  }
  const dependencies = beautifier.dependencies;
  if (dependencies && dependencies.length !== 0) {
    dependencies.forEach(dependency => {
      if (dependency.type === "exec") {
        beautifierOptions.executable_path = {
          title: dependency.name,
          type: "string",
          description: `Path to the ${dependency.name} program executable`,
          default: "",
        };
      }
    });
  }
  return beautifierOptions;
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
