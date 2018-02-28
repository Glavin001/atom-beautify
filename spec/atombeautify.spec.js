describe("Atom Beautify", () => {

  beforeEach(async () => {
    const promise = atom.packages.activatePackage("atom-beautify");
    const pack = atom.packages.getLoadedPackage("atom-beautify");
    pack.activateNow();
    await promise;
  });

  it("atom-beautify package is activated", () => {
    expect(atom.packages.isPackageActive("atom-beautify")).toEqual(true);
  });

});
