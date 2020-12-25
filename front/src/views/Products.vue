<template>
  <div>
    <navbar></navbar>
    <div class="products">
      <div class="d-flex flex-wrap">
        <div
          v-for="(item, i) of result.slice(
            (currentPage - 1) * pagesize,
            currentPage * pagesize
          )"
          :key="i"
        >
          <router-link :to="item.href">
            <div><img :src="item.pic" class="d-100" /></div>
            <div class="d-flex justify-content-around">
              <p v-if="item.price == '暂无价格'">{{ item.price }}</p>
              <p v-else>{{ item.price }}元</p>
              <div>
                <img
                  v-if="item.cartPic == 'cart1.png'"
                  :src="item.cartPic"
                  class="d-100"
                  @click="addToCart"
                />
                <img v-else :src="item.cartPic" class="d-100" />
              </div>
            </div>
            <p>{{ item.title }}</p>
          </router-link>
        </div>
      </div>
      <el-pagination
        background
        layout="prev, pager, next"
        @size-change="handleSizeChange"
        @current-change="handleCurrentChange"
        :current-page="currentPage"
        :page-size="pagesize"
        :total="result.length"
      >
      </el-pagination>
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
    this.axios.get("/products/index").then((res) => {
      this.result = res.data;
    });
  },
  methods: {
    // 初始页currentPage、初始每页数据数pagesize和数据data
    handleSizeChange: function (size) {
      this.pagesize = size;
    },
    handleCurrentChange: function (currentPage) {
      this.currentPage = currentPage;
    },
    addToCart() {
      const product = {};
      product.pic = this.pic1;
      product.title = this.title;
      product.price = this.price;
      product.uid=this.$store.state.info.uid;
      if ($store.state.logined == 0) {
        alert("你未登录,请先登录");
      } else {
        this.$store.dispatch("addCartAction", product);
      }
    },
  },
};
</script>
<style>
.products {
  width: 900px;
  margin: 0 auto;
}

.products a {
  text-decoration: none;
  color: #000;
}

.products > div {
  width: 890px;
  margin: 8px;
}

.products div > p {
  color: #f00;
}
.products .el-pagination {
  width: 200px;
  margin: 0 auto;
}
</style>