

describe("atom-beautify", () => {
  it('activates atom-beautify package', () => {
    const packages = atom.packages.getLoadedPackages();
    expect(packages).toMatchSnapshot();
  })
})