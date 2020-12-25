<template>
  <div>
    <navbar></navbar>

    <div class="newsCenterShow">
      <ul>
        <li v-for="(item, i) of result" :key="i" class="d-flex classify">
          <router-link :to="item.href" v-if="item.href != undefined">{{item.title}}</router-link>
          <p>{{ item.tim }}</p>
        </li>
      </ul>
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
    this.axios.get("/newscentershow/newscentershow").then((res) => {
      this.result = res.data;
    });
  },
};
</script>
<style>
  .newsCenterShow{
    position: relative;
    width: 870px;
    margin: 0 auto;
    font-size: 10px;
  }
  .newsCenterShow .classify{
    margin-bottom: 16px;
  }
  .newsCenterShow a{
    text-decoration: none;
    color: #000;
    
  }
  .newsCenterShow p{
    position: absolute;
    right: -80px;
  }
</style>