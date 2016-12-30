var Beautifiers, _, _plus, beautifier, beautifierOptions, buildOptionsForBeautifiers, fs, optionsStr, outputFilename, path,
  slice = [].slice;

fs = require('fs');

path = require('path');

_ = require('lodash');

_plus = require('underscore-plus');

require("coffee-script/register");

logger = require('../src/logger')(__filename)

Beautifiers = require("../src/beautifiers");

buildOptionsForBeautifiers = function(beautifiers, allLanguages) {
  var allOptions, beautifier, beautifierName, f, field, fields, flatOptions, fn, i, j, k, l, laOp, lang, langName, langOptions, languageName, languages, len, len1, len2, name, name1, name2, op, ops, optionName, options, prefix, ref, ref1, ref10, ref11, ref2, ref3, ref4, ref5, ref6, ref7, ref8, ref9;
  langOptions = {};
  languages = {};
  for (i = 0, len = allLanguages.length; i < len; i++) {
    lang = allLanguages[i];
    if (langOptions[name1 = lang.name] == null) {
      langOptions[name1] = {};
    }
    if (languages[name2 = lang.name] == null) {
      languages[name2] = lang;
    }
    options = langOptions[lang.name];
    lang.beautifiers = [];
    ref = lang.options;
    for (field in ref) {
      op = ref[field];
      if (op.title == null) {
        op.title = _plus.uncamelcase(field).split('.').map(_plus.capitalize).join(' ');
      }
      op.title = lang.name + " - " + op.title;
      op.beautifiers = [];
      op.key = field;
      op.language = {
        name: lang.name,
        namespace: lang.namespace
      };
      options[field] = op;
    }
  }
  for (j = 0, len1 = beautifiers.length; j < len1; j++) {
    beautifier = beautifiers[j];
    beautifierName = beautifier.name;
    ref1 = beautifier.options;
    for (languageName in ref1) {
      options = ref1[languageName];
      laOp = langOptions[languageName];
      if (typeof options === "boolean") {
        if ((ref2 = languages[languageName]) != null) {
          ref2.beautifiers.push(beautifierName);
        }
        if (options === true) {
          if (laOp) {
            for (field in laOp) {
              op = laOp[field];
              op.beautifiers.push(beautifierName);
            }
          } else {
            logger.warn("Could not find options for language: " + languageName);
          }
        }
      } else if (typeof options === "object") {
        for (field in options) {
          op = options[field];
          if (typeof op === "boolean") {
            if (op === true) {
              if ((ref3 = languages[languageName]) != null) {
                ref3.beautifiers.push(beautifierName);
              }
              if (laOp != null) {
                if ((ref4 = laOp[field]) != null) {
                  ref4.beautifiers.push(beautifierName);
                }
              }
            }
          } else if (typeof op === "string") {
            if ((ref5 = languages[languageName]) != null) {
              ref5.beautifiers.push(beautifierName);
            }
            if (laOp != null) {
              if ((ref6 = laOp[op]) != null) {
                ref6.beautifiers.push(beautifierName);
              }
            }
          } else if (typeof op === "function") {
            if ((ref7 = languages[languageName]) != null) {
              ref7.beautifiers.push(beautifierName);
            }
            if (laOp != null) {
              if ((ref8 = laOp[field]) != null) {
                ref8.beautifiers.push(beautifierName);
              }
            }
          } else if (_.isArray(op)) {
            fields = 2 <= op.length ? slice.call(op, 0, k = op.length - 1) : (k = 0, []), fn = op[k++];
            if ((ref9 = languages[languageName]) != null) {
              ref9.beautifiers.push(beautifierName);
            }
            for (l = 0, len2 = fields.length; l < len2; l++) {
              f = fields[l];
              if (laOp != null) {
                if ((ref10 = laOp[f]) != null) {
                  ref10.beautifiers.push(beautifierName);
                }
              }
            }
          } else {
            logger.warn("Unsupported option:", beautifierName, languageName, field, op, langOptions);
          }
        }
      }
    }
  }
  for (langName in langOptions) {
    ops = langOptions[langName];
    lang = languages[langName];
    prefix = lang.namespace;
    for (field in ops) {
      op = ops[field];
      delete ops[field];
      ops[prefix + "_" + field] = op;
    }
  }
  allOptions = _.values(langOptions);
  flatOptions = _.reduce(allOptions, (function(result, languageOptions, language) {
    return _.reduce(languageOptions, (function(result, optionDef, optionName) {
      optionDef.beautifiers = _.uniq(optionDef.beautifiers)
      if (optionDef.beautifiers.length > 0) {
        optionDef.description = optionDef.description + " (Supported by " + (optionDef.beautifiers.join(', ')) + ")";
      } else {
        optionDef.description = optionDef.description + " (Not supported by any beautifiers)";
      }
      if (result[optionName] != null) {
        logger.warn("Duplicate option detected: ", optionName, optionDef);
      }
      result[optionName] = optionDef;
      return result;
    }), result);
  }), {});
  for (langName in languages) {
    lang = languages[langName];
    name = lang.name;
    beautifiers = lang.beautifiers;
    optionName = "language_" + lang.namespace;
    flatOptions[optionName + "_disabled"] = {
      title: "Language Config - " + name + " - Disable Beautifying Language",
      type: 'boolean',
      "default": false,
      description: "Disable " + name + " Beautification"
    };
    flatOptions[optionName + "_default_beautifier"] = {
      title: "Language Config - " + name + " - Default Beautifier",
      type: 'string',
      "default": (ref11 = lang.defaultBeautifier) != null ? ref11 : beautifiers[0],
      description: "Default Beautifier to be used for " + name,
      "enum": _.uniq(beautifiers)
    };
    flatOptions[optionName + "_beautify_on_save"] = {
      title: "Language Config - " + name + " - Beautify On Save",
      type: 'boolean',
      "default": false,
      description: "Automatically beautify " + name + " files on save"
    };
  }
  return flatOptions;
};

buildOptionsForBeautifiers = function(beautifiers, allLanguages) {
  var beautifier, beautifierName, defaultBeautifier, f, fallback, field, fields, fn, g, group, i, j, k, l, laOp, lang, langName, langOptions, languageName, languages, len, len1, len2, len3, len4, len5, m, n, name, name1, namespace, namespaceDest, namespaceSrc, o, op, optionDef, optionName, options, optionsDest, optionsSrc, p, q, ref, ref1, ref10, ref11, ref12, ref13, ref14, ref15, ref16, ref17, ref2, ref3, ref4, ref5, ref6, ref7, ref8, ref9, unsupportedOptions;
  langOptions = {};
  languages = {};
  for (i = 0, len = allLanguages.length; i < len; i++) {
    lang = allLanguages[i];
    namespace = lang.namespace;
    if (langOptions[namespace] == null) {
      langOptions[namespace] = {
        title: lang.name,
        type: 'object',
        description: "Options for language " + lang.name,
        collapsed: true,
        beautifiers: [],
        grammars: lang.grammars,
        extensions: lang.extensions,
        properties: {}
      };
    }
    if (languages[name1 = lang.name] == null) {
      languages[name1] = lang;
    }
    options = _.get(langOptions, namespace + ".properties");
    lang.beautifiers = [];
    ref = lang.options;
    for (field in ref) {
      op = ref[field];
      if (op.title == null) {
        op.title = _plus.uncamelcase(field).split('.').map(_plus.capitalize).join(' ');
      }
      op.beautifiers = [];
      op.key = field;
      op.language = {
        name: lang.name,
        namespace: lang.namespace
      };
      options[field] = op;
    }
  }
  for (j = 0, len1 = allLanguages.length; j < len1; j++) {
    lang = allLanguages[j];
    namespaceDest = lang.namespace;
    optionsDest = _.get(langOptions, namespaceDest + ".properties");
    fallback = _.reverse((ref1 = lang.fallback) != null ? ref1 : []);
    for (k = 0, len2 = fallback.length; k < len2; k++) {
      namespaceSrc = fallback[k];
      optionsSrc = _.get(langOptions, namespaceSrc + ".properties");
      _.merge(optionsDest, optionsSrc);
    }
  }
  for (l = 0, len3 = beautifiers.length; l < len3; l++) {
    beautifier = beautifiers[l];
    beautifierName = beautifier.name;
    ref2 = beautifier.options;
    for (languageName in ref2) {
      options = ref2[languageName];
      namespace = languages[languageName].namespace;
      laOp = _.get(langOptions, namespace + ".properties");
      if (typeof options === "boolean") {
        if ((ref3 = languages[languageName]) != null) {
          ref3.beautifiers.push(beautifierName);
        }
        if ((ref4 = _.get(langOptions, namespace + ".beautifiers")) != null) {
          ref4.push(beautifierName);
        }
        if (options === true) {
          if (laOp) {
            for (field in laOp) {
              op = laOp[field];
              op.beautifiers.push(beautifierName);
            }
          } else {
            logger.warn("Could not find options for language: " + languageName);
          }
        }
      } else if (typeof options === "object") {
        for (field in options) {
          op = options[field];
          if (typeof op === "boolean") {
            if (op === true) {
              if ((ref5 = languages[languageName]) != null) {
                ref5.beautifiers.push(beautifierName);
              }
              if ((ref6 = _.get(langOptions, namespace + ".beautifiers")) != null) {
                ref6.push(beautifierName);
              }
              if (laOp != null) {
                if ((ref7 = laOp[field]) != null) {
                  ref7.beautifiers.push(beautifierName);
                }
              }
            }
          } else if (typeof op === "string") {
            if ((ref8 = languages[languageName]) != null) {
              ref8.beautifiers.push(beautifierName);
            }
            if (laOp != null) {
              if ((ref9 = laOp[op]) != null) {
                ref9.beautifiers.push(beautifierName);
              }
            }
          } else if (typeof op === "function") {
            if ((ref10 = languages[languageName]) != null) {
              ref10.beautifiers.push(beautifierName);
            }
            if ((ref11 = _.get(langOptions, namespace + ".beautifiers")) != null) {
              ref11.push(beautifierName);
            }
            if (laOp != null) {
              if ((ref12 = laOp[field]) != null) {
                ref12.beautifiers.push(beautifierName);
              }
            }
          } else if (_.isArray(op)) {
            fields = 2 <= op.length ? slice.call(op, 0, m = op.length - 1) : (m = 0, []), fn = op[m++];
            if ((ref13 = languages[languageName]) != null) {
              ref13.beautifiers.push(beautifierName);
            }
            if ((ref14 = _.get(langOptions, namespace + ".beautifiers")) != null) {
              ref14.push(beautifierName);
            }
            for (n = 0, len4 = fields.length; n < len4; n++) {
              f = fields[n];
              if (laOp != null) {
                if ((ref15 = laOp[f]) != null) {
                  ref15.beautifiers.push(beautifierName);
                }
              }
            }
          } else {
            logger.warn("Unsupported option:", beautifierName, languageName, field, op, langOptions);
          }
        }
      }
    }
  }
  unsupportedOptions = [];
  for (g in langOptions) {
    group = langOptions[g];
    ref16 = group.properties;
    for (o in ref16) {
      optionDef = ref16[o];
      optionDef.beautifiers = _.uniq(optionDef.beautifiers)
      if (optionDef.beautifiers.length > 0) {
        optionDef.description = optionDef.description + " (Supported by " + (optionDef.beautifiers.join(', ')) + ")";
      } else {
        unsupportedOptions.push(g + ".properties." + o);
      }
    }
  }
  for (q = 0, len5 = unsupportedOptions.length; q < len5; q++) {
    p = unsupportedOptions[q];
    _.unset(langOptions, p);
  }
  for (langName in languages) {
    lang = languages[langName];
    name = lang.name;
    namespace = lang.namespace;
    beautifiers = (lang.beautifiers = _.uniq(lang.beautifiers));
    langOptions[namespace].beautifiers = beautifiers
    optionName = "language_" + namespace;
    _.set(langOptions, namespace + ".properties.disabled", {
      title: "Disable Beautifying Language",
      order: -3,
      type: 'boolean',
      "default": false,
      description: "Disable " + name + " Beautification"
    });
    defaultBeautifier = (ref17 = lang.defaultBeautifier) != null ? ref17 : beautifiers[0];
    _.set(langOptions, namespace + ".properties.default_beautifier", {
      title: "Default Beautifier",
      order: -2,
      type: 'string',
      "default": defaultBeautifier,
      description: "Default Beautifier to be used for " + name,
      "enum": _.uniq(beautifiers)
    });
    if (!_.includes(beautifiers, defaultBeautifier)) {
      logger.warn("Language " + name + " has a default beautifier of " + defaultBeautifier + ", however it is not one of the supported beautifiers: " + (optionDef.beautifiers.join(', ')) + ".");
    }
    _.set(langOptions, namespace + ".properties.beautify_on_save", {
      title: "Beautify On Save",
      order: -1,
      type: 'boolean',
      "default": false,
      description: "Automatically beautify " + name + " files on save"
    });
  }
  return langOptions;
};

beautifier = new Beautifiers();

console.log('Building options for beautifiers');

beautifierOptions = buildOptionsForBeautifiers(beautifier.beautifiers, beautifier.languages.languages);

console.log('Done building options for beautifiers');

optionsStr = JSON.stringify(beautifierOptions, null, 2);

outputFilename = path.resolve(__dirname, '../src/options.json');

fs.writeFile(outputFilename, optionsStr, function(err) {
  if (err) {
    console.log('An error occured saving the beautifier options');
    return console.error(err);
  } else {
    return console.log("Beautifier options successfully saved to " + outputFilename);
  }
});
