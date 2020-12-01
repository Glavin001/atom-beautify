module.exports = {
  "env": {
    "browser": true,
    "es6": true,
    "node": true
  },
  overrides: [
    {
      files:  ["src/*.ts"],
      parser: "@typescript-eslint/parser",
      "parserOptions": {
        "project": "tsconfig.json"
      },
      "plugins": [
        "eslint-plugin-jsdoc",
        "eslint-plugin-import",
        "eslint-plugin-no-null",
        "eslint-plugin-prefer-arrow",
        "@typescript-eslint"
      ],
      "rules": {
        "@typescript-eslint/dot-notation": "error",
        "@typescript-eslint/naming-convention": "error"
      }
    },
    {
      files:  ["script/*.ts"],
      parser: "@typescript-eslint/parser",
      "plugins": [
        "eslint-plugin-jsdoc",
        "eslint-plugin-import",
        "eslint-plugin-no-null",
        "eslint-plugin-prefer-arrow",
        "@typescript-eslint"
      ],
      "rules": {
        "@typescript-eslint/naming-convention": "error"
      }
    }
  ],
  "parserOptions": {
    "sourceType": "module",
    "ecmaVersion": 2018
  },
  "plugins": [
    "eslint-plugin-jsdoc",
    "eslint-plugin-import",
    "eslint-plugin-no-null",
    "eslint-plugin-prefer-arrow"
  ],
  "rules": {
    "@typescript-eslint/adjacent-overload-signatures": "off",
    "@typescript-eslint/array-type": [
      "error",
      {
        "default": "array"
      }
    ],
    "@typescript-eslint/await-thenable": "off",
    "@typescript-eslint/consistent-type-assertions": "off",
    "@typescript-eslint/consistent-type-definitions": "off",
    "@typescript-eslint/explicit-member-accessibility": [
      "error",
      {
        "accessibility": "explicit"
      }
    ],
    "@typescript-eslint/indent": ["error", 2],
    "@typescript-eslint/member-delimiter-style": [
      "error",
      {
        "multiline": {
          "delimiter": "semi",
          "requireLast": true
        },
        "singleline": {
          "delimiter": "semi",
          "requireLast": false
        }
      }
    ],
    "@typescript-eslint/member-ordering": "off",
    "@typescript-eslint/no-empty-function": "error",
    "@typescript-eslint/no-empty-interface": "error",
    "@typescript-eslint/no-explicit-any": "off",
    "@typescript-eslint/no-extraneous-class": "error",
    "@typescript-eslint/no-floating-promises": "off",
    "@typescript-eslint/no-for-in-array": "off",
    "@typescript-eslint/no-inferrable-types": "off",
    "@typescript-eslint/no-misused-new": "error",
    "@typescript-eslint/no-namespace": "off",
    "@typescript-eslint/no-parameter-properties": "off",
    "@typescript-eslint/no-require-imports": "off",
    "@typescript-eslint/no-this-alias": "error",
    "@typescript-eslint/no-unnecessary-boolean-literal-compare": "off",
    "@typescript-eslint/no-unnecessary-qualifier": "off",
    "@typescript-eslint/no-unused-expressions": "error",
    "@typescript-eslint/no-var-requires": "off",
    "@typescript-eslint/prefer-for-of": "off",
    "@typescript-eslint/prefer-function-type": "error",
    "@typescript-eslint/prefer-namespace-keyword": "error",
    "@typescript-eslint/promise-function-async": "off",
    "@typescript-eslint/quotes": [
      "error",
      "double"
    ],
    "@typescript-eslint/restrict-plus-operands": "off",
    "@typescript-eslint/semi": [
      "error",
      "always"
    ],
    "@typescript-eslint/strict-boolean-expressions": "off",
    "@typescript-eslint/triple-slash-reference": [
      "error",
      {
        "path": "always",
        "types": "prefer-import",
        "lib": "always"
      }
    ],
    "@typescript-eslint/type-annotation-spacing": "error",
    "@typescript-eslint/unbound-method": "off",
    "@typescript-eslint/unified-signatures": "error",
    "arrow-body-style": "off",
    "arrow-parens": [
      "off",
      "always"
    ],
    "brace-style": [
      "error",
      "1tbs"
    ],
    "class-methods-use-this": "off",
    "comma-dangle": "error",
    "complexity": "off",
    "constructor-super": "error",
    "curly": "error",
    "default-case": "off",
    "eol-last": "off",
    "eqeqeq": [
      "error",
      "smart"
    ],
    "guard-for-in": "error",
    "id-blacklist": [
      "error",
      "any",
      "Number",
      "number",
      "String",
      "string",
      "Boolean",
      "boolean",
      "Undefined",
      "undefined"
    ],
    "id-match": "error",
    "import/no-default-export": "off",
    "import/no-unassigned-import": "error",
    "import/order": "off",
    "jsdoc/check-alignment": "off",
    "jsdoc/check-indentation": "off",
    "jsdoc/newline-after-description": "off",
    "linebreak-style": [
      "error",
      "unix"
    ],
    "max-classes-per-file": "off",
    "max-len": [
      "error",
      {
        "code": 500
      }
    ],
    "max-lines": "off",
    "new-parens": "error",
    "no-bitwise": "error",
    "no-caller": "error",
    "no-cond-assign": "error",
    "no-console": [
      "error",
      {
        "allow": [
          "log",
          "warn",
          "dir",
          "timeLog",
          "assert",
          "clear",
          "count",
          "countReset",
          "group",
          "groupEnd",
          "table",
          "dirxml",
          "error",
          "groupCollapsed",
          "Console",
          "profile",
          "profileEnd",
          "timeStamp",
          "context"
        ]
      }
    ],
    "no-constant-condition": "error",
    "no-control-regex": "error",
    "no-debugger": "error",
    "no-duplicate-case": "error",
    "no-empty": "error",
    "no-eval": "error",
    "no-extra-semi": "error",
    "no-fallthrough": "error",
    "no-invalid-regexp": "error",
    "no-magic-numbers": "off",
    "no-multi-str": "error",
    "no-multiple-empty-lines": "error",
    "no-new-wrappers": "error",
    "no-null/no-null": "off",
    "no-octal": "error",
    "no-octal-escape": "error",
    "no-redeclare": "error",
    "no-regex-spaces": "error",
    "no-restricted-imports": "off",
    "no-restricted-syntax": [
      "error",
      "ForInStatement"
    ],
    "no-shadow": [
      "off",
      {
        "hoist": "all"
      }
    ],
    "no-sparse-arrays": "error",
    "no-template-curly-in-string": "error",
    "no-throw-literal": "error",
    "no-trailing-spaces": "error",
    "no-undef-init": "error",
    "no-underscore-dangle": "error",
    "no-unsafe-finally": "error",
    "no-unused-labels": "error",
    "no-var": "error",
    "no-void": "off",
    "object-shorthand": "off",
    "one-var": [
      "error",
      "never"
    ],
    "prefer-arrow/prefer-arrow-functions": "error",
    "prefer-const": "error",
    "prefer-template": "off",
    "quote-props": "off",
    "radix": "off",
    "space-before-function-paren": "off",
    "spaced-comment": [
      "error",
      "always",
      {
        "markers": [
          "/"
        ]
      }
    ],
    "use-isnan": "error"
  }
};
