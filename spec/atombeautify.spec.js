describe("Atom Beautify", () => {

  beforeEach(async () => {
    jest.setTimeout(10000);
    await atom.packages.activatePackage("atom-beautify");
  });

  it("atom-beautify package is activated", () => {
    expect(atom.packages.isPackageActive("atom-beautify")).toEqual(true);
  });

  it("Jest test", () => {
    expect(true).toEqual(true);
  });

});
