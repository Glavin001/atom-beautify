class Test extends React.Component<Foo> {
  render() {
    return (
      <div className="class">
        <h2 className="anotherClass">
          {this.foo.bar}
        </h2>
        {this.foo.bar.children}
      </div>
    );
  }
}