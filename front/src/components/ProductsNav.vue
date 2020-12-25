<template>
  <div class="productsnav">
    <div v-for="(item,i) of result" :key="i">
      <div class="d-flex title">
        <div>
          <img :src="item.pic">
        </div>
        <p>{{item.title}}</p>
        
      </div>
      <p v-html="item.subtitle" class="subtitle"></p>
    </div>
  </div>
</template>

<script>

  export default {
    data() {
      return {
        result: {},
      }
    },
    mounted() {
      this.axios.get("/productsnav/productsnav")
        .then(res => {
          this.result = res.data;
        })
    },
  }

</script>
<style >
  .productsnav {
    position: relative;
    top: 6px;
    left: 20%;
    z-index: 666;
    width: 450px;
  }
  .productsnav .subtitle a{
    margin: 3px;
  }

</style>