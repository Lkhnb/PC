<template>
  <div>
    <navbar></navbar>

    <div class="recommand d-flex">
      <div class="reco1">
        <div>
          <a @click="load(1)"> 赣州市罗花岭农业有限公司> </a>
        </div>
        <div>
          <a @click="load(2)"> 赣州市罗花岭农业有限公司> </a>
        </div>
        <div>
          <a @click="load(3)"> 四川苍胜农业有限公司> </a>
        </div>
        <div>
          <a @click="load(4)"> 浙江思远电子商务有限公司> </a>
        </div>
        <div>
          <a @click="load(5)"> 凭祥市碧华贸易有限公司> </a>
        </div>
        <div>
          <a @click="load(6)"> 运城市盐湖区红润怡水果种植专业户> </a>
        </div>
        <div>
          <a @click="load(7)"> 荔浦县牛牛家农业有限公司> </a>
        </div>
        <div>
          <a @click="load(8)"> 桂林亿龙贸易有限公司> </a>
        </div>
        <div>
          <a @click="load(9)"> 福建平和李记农产品有限公司> </a>
        </div>
        <div>
          <a @click="load(10)"> 昭阳市昭阳区许氏农副产品有限公司> </a>
        </div>
      </div>

      <div class="reco2">
        <p>{{ result.title }}</p>
        <p>{{ result.des }}</p>
        <div v-for="(item, i) of pic" :key="i">
          <img :src="item" />
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
      pic: [],
    };
  },
  mounted() {
    this.axios
      .get(`/recommand/recommand/${this.$route.params.pid}`)
      .then((res) => {
        this.result = res.data;
        this.pic = eval("(" + res.data.pic + ")");
      });
  },
  methods: {
    load(pid) {
      this.$router.push(`/recommand/${pid}`);
      this.axios.get(`/recommand/recommand/${pid}`).then((res) => {
        this.result = res.data;
        this.pic = eval("(" + res.data.pic + ")");
      });
    },
  },
};
</script>
<style scoped>
.recommand .reco1 {
  width: 300px;
}

.recommand .reco1 div {
  margin: 18px;
}
.recommand .reco1 a {
  text-decoration: none;
  color: #000;
}

.recommand .reco2 {
  width: 800px;
  margin-left: 10px;
}
</style>