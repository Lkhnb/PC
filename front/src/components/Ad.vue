<template>
  <div class="ad">
    <div class="d-flex justify-content-around cAd">
      <div v-for="(item, i) of result" :key="i">
        <router-link :to="item.href" v-if="item.href != undefined">
          <div>
            <img :src="item.pic" />
          </div>
        </router-link>
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
    this.axios.get("/ad/ad").then((res) => {
      this.result = res.data;
    });
  },
};
</script>
<style>
.ad {
  width: 1450px;
  margin: 0 auto;
  margin-top: 80px;
}

.ad .cAd {
  background-color: #f6f6f6;
  height: 100px;
}
.ad .cAd div {
  line-height: 100px;
}
</style>