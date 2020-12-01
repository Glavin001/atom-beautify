import { Beautifier } from "unibeautify";
import prettyDiff from "@unibeautify/beautifier-prettydiff";
import prettier from "@unibeautify/beautifier-prettier";
import jsBeautify from "@unibeautify/beautifier-js-beautify";
import eslint from "@unibeautify/beautifier-eslint";
import phpCsFixer from "@unibeautify/beautifier-php-cs-fixer";
import clangFormat from "@unibeautify/beautifier-clang-format";
import phpCodesniffer from "@unibeautify/beautifier-php-codesniffer";
import black from "@unibeautify/beautifier-black";
import gofmt from "@unibeautify/beautifier-gofmt";
import sqlFormat from "@unibeautify/beautifier-sqlformat";
import yapf from "@unibeautify/beautifier-yapf";
import tslint from "@unibeautify/beautifier-tslint";
import csscomb from "@unibeautify/beautifier-csscomb";
import stylelint from "@unibeautify/beautifier-stylelint";
import sqlformat from "@unibeautify/beautifier-sqlformat";
import file from "@unibeautify/beautifier-file";
import brittany from "@unibeautify/beautifier-brittany";

export const beautifiers: Beautifier[] = [
  prettier,
  jsBeautify,
  prettyDiff,
  eslint,
  phpCsFixer,
  clangFormat,
  phpCodesniffer,
  black,
  gofmt,
  sqlFormat,
  yapf,
  tslint,
  csscomb,
  stylelint,
  sqlformat,
  file,
  brittany
];
