{View} = require "atom"

module.exports =
class MessageView extends View
  @content: ->
    @div
      class: 'atom-beautify message-panel', =>
        @div
          class: 'overlay from-top', =>
            @div class: "tool-panel panel-bottom", =>
              @div class: "inset-panel", =>
                @div class: "panel-heading", =>
                  @div class: 'btn-toolbar pull-right', =>
                    @button
                      class: 'btn'
                      click: 'close'
                      'Close'
                  @span
                    class: 'text-error'
                    outlet: 'title'
                    'Atom Beautify Message'
                @div
                  class: "panel-body padded"
                  outlet: 'body'
  close: (event, element) =>
    @detach()
  show: =>
    if not @.hasParent()
      atom.workspaceView.appendToTop @
