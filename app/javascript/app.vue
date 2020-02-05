<template>
  <div id="app">
    <p>{{ message }}</p>
  </div>
</template>

<script>
export default {
  data: function () {
    return {
      message: "Hello Vue! blablabla"
    }
  }
}
</script>

<style scoped>
p {
  font-size: 29em;
  text-align: center;
}
</style>