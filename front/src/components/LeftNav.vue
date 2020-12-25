<template>
  <div class="fLeftNav">
    <div class="d-flex leftNav" v-for="(item,i) of data" :key="i">
      <div><img :src="item.pic" class="d-100"></div>
      <router-link :to="item.href" v-if="item.href!=undefined">{{item.title}}</router-link>
    </div>
  </div>
</template>

<script>

  export default {
    data() {
      return {
        data: {}
      };
    },
    mounted() {
      this.axios.get("/leftNav/leftNav")
        .then(result => {
          this.data = result.data;
        })
    },


  }

</script>
<style>
  .fLeftNav{
    width: 240px;
    height: 212px;
    position: relative;
    background-color: #e2e2e2;
  }
  .leftNav {
    position: absolute;
  }
  .fLeftNav>div:nth-child(2){
    left: 120px;
  }
  .fLeftNav>div:nth-child(3){
    top:45px;
  }
  .fLeftNav>div:nth-child(4){
    top:45px;
    left: 120px;
  }
  .fLeftNav>div:nth-child(5){
    top:90px;
  }
  .fLeftNav>div:nth-child(6){
    top:90px;
    left: 120px;
  }
  .fLeftNav>div:nth-child(7){
    top:135px;
  }
  .fLeftNav>div:nth-child(8){
    top:135px;
    left:120px;
  }

</style>