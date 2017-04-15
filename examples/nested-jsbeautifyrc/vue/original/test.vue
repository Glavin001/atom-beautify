<template>
  <base-view>
<div  slot="page-body" class="row">
      Your content here!
    </div>
      </base-view>
</template>

<script>
export default {
  data: function() {
return {
  text: 'Hello, world!'
}
  }
}
</script>

<style lang="sass">
  body
    color: red
    background-color: red
</style>

<style lang="scss">
nav {
  ul {
    margin: 0;
    padding: 0;
  }
  li { display: inline-block; }
  a {
    display: block;
  }
}
</style>
