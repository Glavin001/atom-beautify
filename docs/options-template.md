# Options

Automatically generated documentation for language and beautifier options.

## Supported Options

{{#each options}}
### {{title}} (`{{@key}}`)
{{#if default}}

**Default**: `{{default}}`
{{/if}}

**Type**: `{{type}}`
{{#if enum}}  

**Enum**: {{#each enum}} `{{this}}` {{/each}}
{{/if}}

#### Description
{{description}}

{{/each}}
