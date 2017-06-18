module.exports = {
  general:
    title: 'General'
    type: 'object'
    collapsed: true
    order: -2
    description: 'General options for Atom Beautify'
    properties:
      _analyticsUserId :
        title: 'Analytics User Id'
        type : 'string'
        default : ""
        description : "Unique identifier for this user for tracking usage analytics"
      loggerLevel :
        title: "Logger Level"
        type : 'string'
        default : 'warn'
        description : 'Set the level for the logger'
        enum : ['verbose', 'debug', 'info', 'warn', 'error']
      beautifyEntireFileOnSave :
        title: "Beautify Entire File On Save"
        type : 'boolean'
        default : true
        description : "When beautifying on save, use the entire file, even if there is selected text in the editor. Important: The `beautify on save` option for the specific language must be enabled for this to be applicable. This option is not `beautify on save`."
      muteUnsupportedLanguageErrors :
        title: "Mute Unsupported Language Errors"
        type : 'boolean'
        default : false
        description : "Do not show \"Unsupported Language\" errors when they occur"
      muteAllErrors :
        title: "Mute All Errors"
        type : 'boolean'
        default : false
        description : "Do not show any/all errors when they occur"
      showLoadingView :
        title: "Show Loading View"
        type : 'boolean'
        default : true
        description : "Show loading view when beautifying"
    }
