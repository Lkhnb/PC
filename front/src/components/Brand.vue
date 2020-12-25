<template>
  <div class="brand">
    <div class="d-flex justify-content-around">
      <div v-for="(item, i) of result" class="d-flex" :key="i">
        <div><img :src="item.pic" /></div>
        <div class="title">
          <p>{{ item.title }}</p>
          <p>{{ item.subtitle }}</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      result: {},
    };
  },

  mounted() {
    this.axios.get("/brand/brand").then((res) => {
      this.result = res.data;
    });
  },
};
</script>
<style>
.brand {
  width: 1450px;
  margin: 0 auto;
  margin-top: 50px;
}
.brand .title {
  margin-left: 20px;
}
.brand .title > p:nth-child(1) {
  font-size: 20px;
}
</style>