<template>
  <div>
    <div class="d-flex search">
      <div class="logo">
        <img alt="Vue logo" src="../assets/logo.jpg" />
      </div>
      <div>
        <div class="d-flex">
          <el-input
            v-model="name"
            size="large"
            placeholder="请输入内容"
            maxlength="12"
          ></el-input>
          <span class="searchImg" @click="search">
            <img
              src="@/assets/search/tmp1501523599_1290760_s.png"
              class="d-100"
            />
          </span>
        </div>
      </div>
      <div class="d-flex"  @click="toCart">
        <div class="searchInput">
          <img
            src="@/assets/search/tmp1472805583_1290760_s.jpg"
            class="d-100"
          />
        </div>
        <div class="cartCount d-flex">我的购物车<span class="cartNum">{{this.$store.getters.count}}</span>件商品</div>
        <!-- <p>我的购物车0件商品</p> -->
        <div class="cart d-flex">
          <div><img src="@/assets/search/shopCart_imore.png" alt="" /></div>
        </div>
      </div>
    </div>

  </div>
</template>
<script>
export default {
  data() {
    return {
      active: "a",
      name:""
    };
  },
  methods:{
    search(){
      this.$router.push(`/search/${this.name}`);
    },
    toCart(){
      this.$router.push("/cart");
    }
  },

};
</script>
<style>
  .tabbar {
    background-color: #000;
    color: #fff;
  }

  .tabbar > .el-tab-pane {
    background-color: black;
  }


  .search {
    width: 1200px;
    margin: 0 auto;
    position: relative;
  }

  .search .logo{
    margin-left: 20px;
  }
  .search > div:nth-child(2) {
    position: absolute;
    bottom: 15px;
    left: 50%;
  }
  .search .cartCount{
    white-space: nowrap;
  }
  .search .cartCount .cartNum{
    color: #cc0000;
  }

  .search > div:nth-child(3) {
    margin-top: 50px;
    margin-left: 400px;
  }

  .search .el-input {
    height: 28px;
    width: 272px;
  }

  .search .searchImg {
    height: 28px;
    position: relative;
    left: -30px;
    top: 3px;
  }
</style>