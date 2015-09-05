#### {{#if title}} {{#linkify title}}{{title}}{{/linkify}} {{else}} {{#linkify @key}}`{{@key}}`{{/linkify}} {{/if}}

{{#if beautifiers}}
**Namespace**: `{{language.namespace}}`

**Key**: `{{key}}`
{{else}}
**Important**: This option is only configurable from within Atom Beautify's setting panel.
{{/if}}
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

{{{description}}}

{{#if beautifiers}}
**Example `.jsbeautifyrc` Configuration**

{{example-config this}}

{{else}}
**How to Configure**

1. You can open the [Settings View](https://github.com/atom/settings-view) by navigating to
*Edit > Preferences (Linux)*, *Atom > Preferences (OS X)*, or *File > Preferences (Windows)*.
2. Go into *Packages* and search for "*Atom Beautify*" package.
3. Find the option "*{{title}}*" and change it to your desired configuration.

{{/if}}