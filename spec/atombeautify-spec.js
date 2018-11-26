
describe("Atom Beautify", () => {

  let editor;
  let workspaceElement;

  beforeEach(() => {

    workspaceElement = atom.views.getView(atom.workspace);

    waitsForPromise(() => {
      const promise = atom.packages.activatePackage("atom-beautify");
      const AtomBeautify = atom.packages.getLoadedPackage("atom-beautify");
      AtomBeautify.activateNow();
      return promise;
    });

    waitsForPromise(() => atom.workspace.open("test.js"));

    runs(() => {
      atom.config.set("atom-beautify.languages.JavaScript.quotes", ["single"]);
    });

    runs(() => {
      editor = atom.workspace.getActiveTextEditor();
    });
  });

  it("atom-beautify package is activated", () => {
    console.log(atom.packages.getLoadedPackages());
    console.log(atom.packages.getActivePackages());
    expect(atom.packages.isPackageActive("atom-beautify")).toEqual(true);
  });

  it('should provide the atom-beautify:beautify-editor command', () => {
    let isAvailable = false;
    atom.commands.findCommands({target: atom.views.getView(atom.workspace)})
    .forEach(command => {
      console.log(command.name);
      if (command.name === 'atom-beautify:beautify-editor') {
        isAvailable = true;
      }
    });
    expect(isAvailable).toBeTruthy();
  });

  // it("atom-beautify command beautifies text", () => {
  //   editor.setText(`const test = "test"`);
  //   const grammar = atom.grammars.selectGrammar("source.js");
  //   editor.setGrammar(grammar);
  //   waitsForPromise(() => atom.commands.dispatch(workspaceElement, "atom-beautify:beautify-editor"));
  //   expect(editor.getText()).toEqual(`const test = 'test'`);
  // });
});
