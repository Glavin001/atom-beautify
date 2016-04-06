{View, TextEditorView} = require 'atom-space-pen-views'

module.exports =
class LoadingView extends View
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
                      click: 'hide'
                      'Hide'
                  @span
                    class: 'text-primary'
                    outlet: 'title'
                    'Atom Beautify'
                @div
                  class: "panel-body padded select-list text-center"
                  outlet: 'body'
                  =>
                    @div =>
                      @span
                        class: 'text-center loading loading-spinner-large inline-block'
                      @div
                        class: ''
                        'Beautification in progress.'

  hide: (event, element) =>
    @detach()

  show: =>
    if not @.hasParent()
      atom.workspace.addTopPanel(item: @)
