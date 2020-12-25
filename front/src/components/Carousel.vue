<template>
  <div id="carousel">
    <el-carousel
      :height="innerHeight"
      class="el_carousel"
      indicator-position="outside"
    >
      <el-carousel-item v-for="item in img" :key="item.cid">
        <div class="ccar"><img :src="item.img"/></div>
      </el-carousel-item>
    </el-carousel>
  </div>
</template>

<script>
export default {
  name: "Carousel",
  props: [""],
  data() {
    return {
      img: [],
      innerHeight: "500px",
    };
  },
  mounted() {
    this.axios.get("/carousel/carousel").then((result) => {
      this.img = result.data;
    });
  },
};
</script>
<style >
#carousel {
  position: relative;
  top: -480px;
  height: 200px;
  z-index: 2;
}
#carousel .el_carousel {
  width: 100%;
}
#carousel .el_carousel .ccar {
  height: 550px;
  width: 1650px;
  margin:0 auto;
}
#carousel .el_carousel .ccar img {
  height: 100%;
  width: 100%;
}
</style>