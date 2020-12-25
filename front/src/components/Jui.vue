<template>
  <div class="jui">
    <div class="d-flex title">
      <img src="../assets/indexLine/1.png" />
      <router-link to="/products">水果饮品</router-link>
    </div>

    <div class="d-flex flex-wrap cJui">
      <div>
        <left-nav></left-nav>
        <router-link :to="bigs1.href" v-if="bigs1.href != undefined">
          <div><img :src="bigs1.pic" /></div>
        </router-link>
      </div>
      <div><img :src="bigs2.pic" /></div>
      <div class="bigs1">
        <router-link :to="bigs3.href" v-if="bigs3.href != undefined">
          <div><img :src="bigs3.pic" class="d-100" /></div>
          <span>¥{{ bigs3.price }}</span>
          <p>{{ bigs3.title }}</p>
        </router-link>
      </div>

      <div class="d-flex">
        <div v-for="(item, i) of smalls" :key="i">
          <router-link :to="item.href" v-if="item.href != undefined">
            <div>
              <div><img :src="item.pic" /></div>
              <span>¥{{ item.price }}</span>
              <p>{{ item.title }}</p>
            </div>
          </router-link>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: [""],
  data() {
    return {
      bigs: [],
      bigs1: { price: "", title: "" },
      bigs2: { price: "", title: "" },
      bigs3: { price: "", title: "" },
      smalls: { price: "", title: "" },
    };
  },
  mounted() {
    this.axios.get("/jui/jui").then((result) => {
      [this.bigs1, this.bigs2, this.bigs3, ...this.smalls] = result.data;
    });
  },
};
</script>
<style>
.jui {
  width: 1450px;
  margin: 0 auto;
  margin-top: 250px;
}

.jui .title a {
  font-size: 20px;
  text-decoration: none;
}

.jui .cJui {
  position: relative;
}

.jui .cJui .bigs1 {
  width: 228px;
  height: 291px;
  position: absolute;
  left: 960px;
}

.jui .cJui > div > a > div img {
  width: 228px;
}

.jui .cJui > div:nth-child(4) {
  width: 960px;
  height: 291px;
  position: absolute;
  left: 245px;
  top: 300px;
  padding: 2px;
}

.jui .cJui > div:nth-child(2) {
  position: absolute;
  left: 245px;
}

.jui > span:first-child {
  color: #fff;
  background-color: #f00;
}

.jui > span:nth-child(2) {
  background-color: #bbb;
}

.jui > div:nth-child(2) {
  width: 231px;
  height: 346px;
}

.jui a {
  color: #000;
}

.jui .d-flex span {
  color: #f00;
}
</style>