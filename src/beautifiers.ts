import { Beautifier } from "unibeautify";
import prettyDiff from "@unibeautify/beautifier-prettydiff";
import prettier from "@unibeautify/beautifier-prettier";
import jsBeautify from "@unibeautify/beautifier-js-beautify";
import eslint from "@unibeautify/beautifier-eslint";
import phpCsFixer from "@unibeautify/beautifier-php-cs-fixer";
import phpCodeSniffer from "@unibeautify/beautifier-php-codesniffer";

const beautifiers: Beautifier[] = <any[]>[
  prettier,
  jsBeautify,
  prettyDiff,
  eslint,
  phpCsFixer,
  phpCodeSniffer,
];

export default beautifiers;
