{$, $$, $$$, View} = require "atom-space-pen-views"

module.exports =
class MessageView extends View
  messages: []
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
                      click: 'clearMessages'
                      'Clear'
                  @span
                    class: ''
                    outlet: 'title'
                    'Atom Beautify Message'
                @div
                  class: "panel-body padded select-list"
                  outlet: 'body'
                  =>
                    @ol
                      class: 'list-group',
                      outlet: 'messageItems'
                      =>
                        @li class: 'two-lines', =>
                          @div class: 'status status-removed icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-alert', 'This is the title'
                          @div class: 'secondary-line no-icon', 'Secondary line'
                        @li class: 'two-lines', =>
                          @div class: 'status status-removed icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-alert', 'This is the title Currently there is no way to display a message to the user, such as errors or warnings or deprecation notices (see #40). Let\'s put a little overlay on the top for displaying such information.'
                          @div class: 'secondary-line no-icon', 'This is the title Currently there is no way to display a message to the user, such as errors or warnings or deprecation notices (see #40). Let\'s put a little overlay on the top for displaying such information.'
                        @li class: 'two-lines', =>
                          @div class: 'status status-removed icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-alert', 'test'
                          @div class: 'secondary-line no-icon', 'Secondary line'
                        @li class: 'two-lines', =>
                          @div class: 'status status-removed icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-alert', 'This is the title'
                          @div class: 'secondary-line no-icon', 'Secondary line'
                        @li class: 'two-lines', =>
                          @div class: 'status status-removed icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-alert', 'This is the title'
                          @div class: 'secondary-line no-icon', 'Secondary line'
                        @li class: 'two-lines', =>
                          @div class: 'status status-added icon icon-diff-added', ''
                          @div class: 'primary-line icon icon-file-text', 'Primary line'
                          @div class: 'secondary-line no-icon', 'Secondary line'

  constructor: ->
    super

  destroy: ->

  addMessage: (message) =>
    @messages.push(message)
    @refresh()

  clearMessages: =>
    @messages = []
    @refresh()

  close: (event, element) =>
    @detach()

  show: =>
    if not @.hasParent()
      atom.workspaceView.appendToTop @

  refresh: =>
    # If the messages list is empty, view should be closed.
    if @messages.length is 0
      @close()
    else
      @show()
