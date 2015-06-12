module.exports = {
  analytics :
    type : 'boolean'
    default : true
    description : "There is [Segment.io](https://segment.io/) which forwards data to [Google
            Analytics](http://www.google.com/analytics/) to track what languages are being
            used the most, as well as other stats. Everything is anonymized and no personal
            information, such as source code, is sent.
            See https://github.com/Glavin001/atom-beautify/issues/47 for more details."
  _analyticsUserId :
    type : 'string'
    default : ""
    description : "Unique identifier for this user for tracking usage analytics"
  _loggerLevel :
    type : 'string'
    default : 'warn'
    description : 'Set the level for the logger'
    enum : ['verbose', 'debug', 'info', 'warn', 'error']
  beautifyEntireFileOnSave :
    type : 'boolean'
    default : true
    description : "When beautifying on save, use the entire file, even if there is selected text in the editor"
  muteUnsupportedLanguageErrors :
    type : 'boolean'
    default : false
    description : "Do not show \"Unsupported Language\" errors when they occur"
  muteAllErrors :
    type : 'boolean'
    default : false
    description : "Do not show any/all errors when they occur"
}
