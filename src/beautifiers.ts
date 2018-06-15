import { Beautifier } from "unibeautify";
import prettyDiff from "@unibeautify/beautifier-prettydiff";
import prettier from "@unibeautify/beautifier-prettier";
import jsBeautify from "@unibeautify/beautifier-js-beautify";
import eslint from "@unibeautify/beautifier-eslint";
import phpCsFixer from "@unibeautify/beautifier-php-cs-fixer";

const beautifiers: Beautifier[] = <any[]>[
  prettier,
  jsBeautify,
  prettyDiff,
  eslint,
  phpCsFixer,
];

export default beautifiers;
