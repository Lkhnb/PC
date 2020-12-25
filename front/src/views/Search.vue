<template>
  <div>
    <navbar></navbar>

    <div class="search">
      <div class="d-flex flex-wrap">
        <div v-for="(item, i) of result" :key="i">
          <router-link :to="item.href">
            <div><img :src="item.pic" class="d-100" /></div>
            <div class="d-flex justify-content-around">
              <p>{{ item.price }}</p>
              <div>
                <img :src="item.cartPic" class="d-100" />
              </div>
            </div>
            <p>{{ item.title }}</p>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      result: [],
      currentPage: 1, //初始页
      pagesize: 12, //    每页的数据
    };
  },
  mounted() {
    this.getInfo();
  },
  watch: {
    $route(to, from) {
      console.log(to, from);
      this.getInfo();
    },
  },
  methods: {
    getInfo() {
      this.axios.get(`/search/${this.$route.params.name}`).then((res) => {
        if (res.data.code == 400) {
          alert("未查到相关的信息");
        }
        this.result = res.data;
      });
    },
  },
};
</script>
<style>
.search {
  margin: 0 auto;
}

.search a {
  text-decoration: none;
  color: #000;
}

.search > div {
  width: 890px;
  margin: 8px;
}

.search div > p {
  color: #f00;
}
</style>