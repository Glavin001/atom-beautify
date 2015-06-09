#### {{#if title}} {{#linkify title}}{{title}}{{/linkify}} {{else}} {{#linkify @key}}`{{@key}}`{{/linkify}} {{/if}}

**Key**: `{{@key}}`
{{#if default}}

**Default**: `{{default}}`
{{/if}}

**Type**: `{{type}}`
{{#if enum}}  

**Enum**: {{#each enum}} `{{this}}` {{/each}}
{{/if}}
{{#if beautifiers}}  

**Supported Beautifiers**: {{#each beautifiers}} {{#linkify this}}`{{this}}`{{/linkify}} {{/each}}
{{/if}}

**Description**:

{{description}}

