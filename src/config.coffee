module.exports = {
  general:
    title: 'General'
    type: 'object'
    collapsed: true
    order: -1
    description: 'General options for Atom Beautify'
    properties:
      analytics :
        title: 'Anonymous Analytics'
        type : 'boolean'
        default : true
        description : "[Google
                Analytics](http://www.google.com/analytics/) is used to track what languages are being
                used the most and causing the most errors, as well as other stats such as performance.
                Everything is anonymized and no personal
                information, such as source code, is sent.
                See https://github.com/Glavin001/atom-beautify/issues/47 for more details."
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
    }
