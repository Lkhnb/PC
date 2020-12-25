<template>
  <div>
    <navbar> </navbar>

    <div class="details">
      <p>详细说明</p>
      <div class="d-flex">
        <div class="big">
          <div><img :src="pic1" class="d-100" /></div>
          <div class="smalls d-flex">
            <div v-for="(item, index) of oPics" :key="index">
              <img :src="item" alt="" class="d-100" />
            </div>
          </div>
        </div>

        <div class="des">
          <h4>{{ title }}</h4>
          <div class="d-flex">
            <p>价格</p>
            <p>{{ price }}</p>
          </div>
          <p>累计销量{{ sold_count }}|累计评价0</p>
          <p>
            购买数量
            <el-input type="text" size="small" v-model="num"></el-input>
            <el-button @click="addNum" type="small">+</el-button>
            <el-button @click="increNum" type="small">-</el-button>
          </p>
          <div class="d-flex">
            <div><img src="../assets/detailsCart/1.png" /></div>
            <div @click="addToCart">
              <img src="../assets/detailsCart/2.png" />
            </div>
          </div>
        </div>
      </div>
      <div class="specs d-flex">
        <p>产品说明</p>
        <p>所有评价</p>
      </div>
      <div class="showPic">
        <div v-for="(value, i) of des" :key="i">
          <img :src="value" alt="" />
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  props: ["pid"],
  data() {
    return {
      title: { title: "" },
      price: {},
      sold_count: {},
      pic1: [],
      oPics: [],
      des: [],
      num:1
    };
  },
  created() {
    this.axios.get(`/details/${this.pid}`).then((result) => {
      // console.log(result.data);
      this.title = result.data[0].title;
      this.price = result.data[0].price;
      this.sold_count = result.data[0].sold_count;
      [this.pic1, ...this.oPics] = eval("(" + result.data[0].pic + ")");
      this.des = eval("(" + result.data[0].des + ")");
    });
  },
  methods: {
    addToCart() {
      const product = {};
      product.pic = this.pic1;
      product.title = this.title;
      product.price = this.price;
      product.num=this.num;
      product.uid=this.$store.state.info.uid;
      if(this.$store.state.logined==0){
        alert("你未登录,请先登录");
      }else{
        // console.log(this.$store.);
        this.$store.dispatch("addCartAction", product);
      }
      
    },
    addNum(){
      this.num++;
    },
    increNum(){
      this.num--;
    }
  },
};
</script>

<style>
.details{
  width: 900px;
  margin: 0 auto;
}
.details > p:nth-child(1) {
  border-bottom: 1px solid #ffc514;
}
.details .big {
  width: 420px;
  height: 420px;
  border: 1px solid gray;
}

.details .big > div:nth-child(1) {
  text-align: center;
  line-height: 420px;
}

.details .big img {
  width: 336px;
}

.details .smalls img {
  width: 90px;
}

.details .el-input {
  width: 51px;
  height: 44px;
}
.details .des {
  margin-left: 15px;
}

.details .des > p:nth-child(1) {
  font-size: 32px;
}

.details .des .d-flex p:nth-child(1) {
  margin-top: 8px;
}

.details .des .d-flex p:nth-child(2) {
  color: #f00;
  margin-left: 50px;
  font-size: 25px;
}

.details .specs {
  background-color: #ffc514;
  width: 790px;
  height: 40px;
  position: relative;
  top: 150px;
}
.details .specs p {
  color: #fff;
  margin-left: 50px;
  line-height: 40px;
  font-size: 20px;
}
.details .showPic {
  position: relative;
  top: 170px;
}
</style>