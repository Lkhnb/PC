<template>
  <div class="hot">
    <div class="d-flex flex-wrap">
      <div class="fBigs d-flex">
        <div class="button">
          <el-button type="danger">热门食品推荐</el-button>
          <el-button></el-button>
        </div>
        <router-link :to="bigs1.href" v-if="bigs1.href != undefined">
          <div class="bigs1">
            <div><img :src="bigs1.pic" /></div>
            <span>¥{{ bigs1.price }}</span>
            <p>{{ bigs1.title }}</p>
          </div>
        </router-link>
        <router-link :to="bigs2.href" v-if="bigs2.href != undefined">
          <div class="bigs1">
            <div><img :src="bigs2.pic" /></div>
            <span>¥{{ bigs2.price }}</span>
            <p>{{ bigs2.title }}</p>
          </div>
        </router-link>
        <router-link :to="bigs3.href" v-if="bigs3.href != undefined">
          <div class="bigs1">
            <div><img :src="bigs3.pic" /></div>
            <span>¥{{ bigs3.price }}</span>
            <p>{{ bigs3.title }}</p>
          </div>
        </router-link>
      </div>
    </div>

    <div class="fSmall">
      <div v-for="(item, i) of smalls" :key="i" class="show">
        <router-link :to="item.href" v-if="item.href != undefined">
          <div class="small d-flex">
            <div><img :src="item.pic" class="d-100" /></div>
            <div>
              <p>{{ item.title }}</p>
              <span>¥{{ item.price }}</span>
            </div>
          </div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: [""],
  data() {
    return {
      bigs1: { price: "", title: "" },
      bigs2: { price: "", title: "" },
      bigs3: { price: "", title: "" },
      smalls: { price: "", title: "" },
    };
  },
  mounted() {
    this.axios.get("/hot/hot").then((result) => {
      [this.bigs1, this.bigs2, this.bigs3, ...this.smalls] = result.data;
    });
  },
};
</script>
<style>
.hot {
  width: 1450px;
  margin: 0px auto;
  position: relative;
  top: -150px;
}
.hot .button {
  position: relative;
  color: #fff;
}
.hot .el-button:nth-child(1) {
  position: absolute;
  width: 228px;
  font-size: 17.5px;
  border-radius: 0;
}

.hot .el-button:nth-child(2) {
  position: absolute;
  left: 228px;
  width: 462px;
  height: 43px;
  margin: 0;
  border-radius: 0;
  background-color: #e2e2e2;
}
.hot .fBigs {
  width: 693px;
  position: relative;
}
.hot .fBigs a {
  position: absolute;
  top: 43px;
}
.hot .fBigs a:nth-child(2) {
  left: 229px;
}
.hot .fBigs a:nth-child(3) {
  left: 458px;
}

.hot .bigs1 {
  border: dashed 1px #e2e2e2;
  width: 231px;
  height: 346px;
}

.hot .small {
  border: dashed 1px #e2e2e2;
  width: 250px;
  height: 130px;
}

.hot .fSmall {
  width: 550px;
  position: absolute;
  left: 695px;
  top: 0;
}

.hot .fSmall .show {
  position: absolute;
}

.hot .fSmall>div:nth-child(2) {
  left: 250px;
}

.hot .fSmall>div:nth-child(3) {
  left: 0px;
  top: 130px;
}

.hot .fSmall>div:nth-child(4) {
  left: 250px;
  top: 130px;
}

.hot .fSmall>div:nth-child(5) {
  left: 0px;
  top: 260px;
}

.hot .fSmall>div:nth-child(6) {
  left: 250px;
  top: 260px;
}

.hot .small > div img {
  width: 110px;
}

.hot > span:first-child {
  color: #fff;
  background-color: #f00;
}

.hot > span:nth-child(2) {
  background-color: #bbb;
}

.hot > div:nth-child(1) {
  width: 231px;
  height: 346px;
}

.hot a {
  color: #000;
}

.hot .bigs1 > span,
.small span {
  color: #f00;
}
.hot > .d-flex > .fBigs > .button > .el-button {
  color: #fff;
}
</style>