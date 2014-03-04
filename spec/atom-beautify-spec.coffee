AtomBeautify = require '../lib/atom-beautify'

# Use the command `window:run-package-specs` (cmd-alt-ctrl-p) to run specs.
#
# To run a specific `it` or `describe` block add an `f` to the front (e.g. `fit`
# or `fdescribe`). Remove the `f` to unfocus the block.

describe "AtomBeautify", ->
  activationPromise = null

  beforeEach ->
    atom.workspaceView = new WorkspaceView
    activationPromise = atom.packages.activatePackage('atomBeautify')

#  describe "when the beautify event is triggered", ->
#    it "attaches and then detaches the view", ->
#      expect(atom.workspaceView.find('.atom-beautify')).not.toExist()
#
#      # This is an activation event, triggering it will cause the package to be
#      # activated.
#      atom.workspaceView.trigger 'beautify'
#
#      waitsForPromise ->
#        activationPromise
#
#      runs ->
#        expect(atom.workspaceView.find('.atom-beautify')).toExist()
#        atom.workspaceView.trigger 'beautify'
#        expect(atom.workspaceView.find('.atom-beautify')).not.toExist()
