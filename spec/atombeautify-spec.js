
describe("Atom Beautify", () => {

  let editor;
  let workspaceElement;

  beforeEach(() => {

    workspaceElement = atom.views.getView(atom.workspace);

    waitsForPromise(() => {
      const promise = atom.packages.activatePackage("atom-beautify");
      const AtomBeautify = atom.packages.getLoadedPackage("atom-beautify");
      AtomBeautify.activateNow();
      atom.packages.activatePackage("language-javascript");
      return promise;
    });

    waitsForPromise(() => atom.workspace.open("test.js"));

    runs(() => {
      editor = atom.workspace.getActiveTextEditor();
    });
  });

  it("atom-beautify package is activated", () => {
    expect(atom.packages.isPackageActive("atom-beautify")).toEqual(true);
  });

  it('should provide the atom-beautify:beautify-editor command', () => {
    let isAvailable = false;
    atom.commands.findCommands({target: atom.views.getView(atom.workspace)})
    .forEach(command => {
      if (command.name === 'atom-beautify:beautify-editor') {
        isAvailable = true;
      }
    });
    expect(isAvailable).toBeTruthy();
  });

  it("atom-beautify command beautifies text", () => {
    const originalText = `const test = 'test'`;
    const expectedText = `const test = "test"`;
    atom.config.set("atom-beautify.languages.JavaScript.quotes", "double");
    editor.setText(originalText);
    const grammar = atom.grammars.selectGrammar("source.js");
    editor.setGrammar(grammar);
    waitsForPromise(() =>
      atom.commands
        .dispatch(workspaceElement, "atom-beautify:beautify-editor")
        .then(() => expect(editor.getText()).toEqual(expectedText))
    );
  });
});
