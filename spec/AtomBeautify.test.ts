describe("My Delightful Package", () => {
  it("knows about all of Atom's loaded packages", () => {
    const packages = atom.packages.getLoadedPackages();
    expect(packages).toMatchSnapshot();
  })
})