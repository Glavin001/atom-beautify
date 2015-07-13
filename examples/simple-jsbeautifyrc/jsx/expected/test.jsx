var Mist = React.createClass({
  renderList: function() {
    return this.props.items.map(function(item) {
      return <ListItem item={return <tag>{item}</tag>} key={item.id}/>;
    });
  }
});