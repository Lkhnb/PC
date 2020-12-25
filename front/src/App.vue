<template>
  <div id="app">
    <top></top>
    <my-header></my-header>
    <right-nav></right-nav>
    <!-- <keep-alive  exclude="Details"> -->
    <router-view></router-view>
    <!-- </keep-alive> -->

    <my-footer></my-footer>
  </div>
</template>
<script>
export default {
  mounted() {
    window.addEventListener("unload", this.saveState);
  },
  methods: {
    saveState() {
      localStorage.setItem("state", JSON.stringify(this.$store.state));
    },
  },
};
</script>

<style>
</style>
