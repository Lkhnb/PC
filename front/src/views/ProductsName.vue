<template>
  <div>
    <navbar></navbar>

    <div class="productsname">
      <div class="d-flex flex-wrap">
        <div
          v-for="(item, i) of result"
          :key="i"
        >
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
  props: ["name"],
  data() {
    return {
      result: [],

    };
  },
  mounted() {
    this.axios.get(`/productsname/${this.name}`).then((res) => {
      this.result = res.data;
    });
  },

};
</script>
<style>
.productsname {
  margin: 0 auto;
}

.productsname a {
  text-decoration: none;
  color: #000;
}

.productsname > div {
  width: 890px;
  margin: 8px;
}

.productsname div > p {
  color: #f00;
}
</style>