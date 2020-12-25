<template>
  <div>
    <navbar></navbar>

    <div class="fcart">
      <div class="top">
        <div>商品</div>
        <div>单价(元)</div>
        <div>数量</div>
        <div>小计(元)</div>
        <div>操作</div>
      </div>
      <div v-for="(item, i) of result" :key="i" class="show d-flex">
        <el-checkbox v-model="item.ischeck"></el-checkbox>
        <div class="'pic"><img :src="item.pic" /></div>
        <div class="title">{{ item.title }}</div>
        <div class="price">￥{{ item.price }}</div>
        <div class="num d-flex">
          <el-button
            type="small"
            @click="incrementNum(item)"
            :disabled="item.num == 1"
            >-</el-button
          >
          <p>{{ item.num }}</p>
          <el-button type="small" @click="addNum(item)">+</el-button>
        </div>
        <div class="subtotal">￥{{ item.price * item.num }}</div>
        <div class="operation">
          <a @click="del({ item: item, i: i })">删除</a>
        </div>
      </div>
      <div class="total d-flex">
        <div>
          <el-checkbox v-model="isAllChecked">全选</el-checkbox><span></span>
        </div>
        <p class="d-flex mount"><span>已选择</span><span class="countShop">{{totalNum}}</span><span>件商品</span></p>
        <p class="totalPrice">总价(不含运费):￥<span>{{total}}</span></p>
        <button>去结算</button>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      result: [],
    };
  },
  mounted() {
    this.result = this.$store.state.cartList;
  },
  methods: {
    del(item) {
      var r = confirm("你确定要删除这个商品吗？");
      if (r) {
        this.$store.dispatch("delAction", item);
      }
    },
    addNum(item) {
      this.$store.dispatch("addCartAction", item);
    },
    incrementNum(item) {
      item.num--;
      this.$store.dispatch("incrementCartAction", item);
    },
  },
  computed: {
    total() {
      let total = 0;
      for (const iterator of this.result) {
        if (iterator.ischeck == "1") {
          total += iterator.price * iterator.num;
        }
      }
      return total;
    },
    totalNum() {
      let totalNum = 0;
      for (const iterator of this.result) {
        if (iterator.ischeck == "1") {
          totalNum += 1;
        }
      }
      return totalNum;
    },
    isAllChecked: {
      get() {
        return this.result.every((el) => el.ischeck==1);
      },
      set(val) {
        return this.result.forEach((el) => (el.ischeck = val));
      },
    },
  },
};
</script>

<style>
.fcart {
  width: 1680px;
  white-space: nowrap;
}

.fcart .total {
  margin-left: 140px;
}
.fcart .total button {
  background-color: #ffa312;
  color: #fff;
  border: none;
}
.fcart .total .mount {
  width: 120px;
  margin-left: 750px;
}
.fcart .total .totalPrice {
  margin-left: 50px;
}
.fcart .total .totalPrice span {
  color: #f00;
}
.fcart .total .countShop {
  color: #f00;
}
.fcart .top {
  display: flex;
  margin-left: 150px;
}
.fcart .top div {
  width: 250px;
  white-space: nowrap;
}
.fcart .top div:nth-child(1) {
  margin-left: 10px;
}
.fcart .top div:nth-child(2) {
  margin-left: 70px;
  width: 100px;
}
.fcart .top div:nth-child(3) {
  width: 100px;
  margin-left: 330px;
}
.fcart .top div:nth-child(4) {
  width: 100px;
  margin-left: 220px;
}
.fcart .top div:nth-child(5) {
  width: 100px;
  margin-left: 150px;
}
.fcart .top div:nth-child(6) {
  width: 100px;
  margin-left: 100px;
}
.fcart .show {
  border-bottom: 1px dashed #ccc;
  margin-top: 40px;
  margin-left: 150px;
}
.fcart .show div {
  white-space: nowrap;
}
.fcart .show .pic {
  margin-left: 20px;
}
.fcart .show .title {
  margin-left: 35px;
  width: 160px;
}
.fcart .show .price {
  margin-left: 380px;
  width: 80px;
}
.fcart .show img {
  width: 78px;
}
.fcart .show .subtotal {
  margin-left: 180px;
  width: 50px;
}
.fcart .show .num {
  width: 100px;
  margin-left: 180px;
}
.fcart .show .num p {
  width: 20px;
}
.fcart .show .num .el-button {
  height: 40px;
}
.fcart .show .operation {
  color: #ff7474;
  margin-left: 150px;
}
.fcart .show .operation a {
  text-decoration: none;
}
</style>