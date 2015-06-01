### {{#if title}} {{title}} {{else}} `{{@key}}` {{/if}}

**Key**: `{{@key}}`
{{#if default}}

**Default**: `{{default}}`
{{/if}}

**Type**: `{{type}}`
{{#if enum}}  

**Enum**: {{#each enum}} `{{this}}` {{/each}}
{{/if}}

**Description**:

{{description}}
