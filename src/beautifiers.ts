import { Beautifier } from "unibeautify";
import black from "@unibeautify/beautifier-black";
import brittany from "@unibeautify/beautifier-brittany";
import clangFormat from "@unibeautify/beautifier-clang-format";
import cssComb from "@unibeautify/beautifier-csscomb";
import goFmt from "@unibeautify/beautifier-gofmt";
import prettyDiff from "@unibeautify/beautifier-prettydiff";
import prettier from "@unibeautify/beautifier-prettier";
import jsBeautify from "@unibeautify/beautifier-js-beautify";
import eslint from "@unibeautify/beautifier-eslint";
import phpCsFixer from "@unibeautify/beautifier-php-cs-fixer";
import phpCodeSniffer from "@unibeautify/beautifier-php-codesniffer";
import sqlFormat from "@unibeautify/beautifier-sqlformat";
import styleLint from "@unibeautify/beautifier-stylelint";
import yapf from "@unibeautify/beautifier-yapf";

const beautifiers: Beautifier[] = <any[]>[
  black,
  brittany,
  clangFormat,
  cssComb,
  goFmt,
  prettier,
  jsBeautify,
  prettyDiff,
  eslint,
  phpCsFixer,
  phpCodeSniffer,
  sqlFormat,
  styleLint,
  yapf,
];

export default beautifiers;
