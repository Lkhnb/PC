<template>
  <div class="bottom">
    <div class="cbottom d-flex">
      <div class="title">
        <div><img src="../assets/bottom/1.png" /></div>
        <p class="pTitle">特色水果商城</p>
      </div>
      <div class="classfy d-flex">
        <ul>
          <li v-for="(item1, i1) of title1" :key="i1">{{ item1 }}</li>
        </ul>
        <ul>
          <li v-for="(item2, i2) of title2" :key="i2">{{ item2 }}</li>
        </ul>
        <ul>
          <li v-for="(item3, i3) of title3" :key="i3">{{ item3 }}</li>
        </ul>
      </div>

      <div class="d-flex wechat">
        <div>
          <div>
            <img src="../assets/bottom/2.png" class="d-100" />
          </div>
          <p>扫一扫手机站</p>
        </div>
        <div>
          <div>
            <img src="../assets/bottom/3.png" class="d-100" />
          </div>
          <p>扫一扫关注微信</p>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: "",
  props: [""],
  data() {
    return {
      title1: ["关于我们", "联系我们", "加入我们", "隐私声明"],
      title2: ["购物指南", "新用户注册", "购物流程", "常见问题", "积分规则"],
      title3: ["物流配送", "商品签收", "配送范围"],
    };
  },
};
</script>
<style>
.bottom {
  margin-top: 20px;
  background-color: #000;
  color: #fff;
  text-align: center;
}
.bottom .classfy {
  margin-left: 80px;
}
.bottom .pTitle {
  font-size: 26px;
}
.bottom .title {
  margin: 60px;
}
.bottom .cbottom {
  width: 1450px;
  margin: 0 auto;
}
.bottom .cbottom ul {
  margin-top: 20px;
  margin-left: 15px;
  list-style: none;
  border-left: 1px dashed #a9a9a9;
  color: #cccccc;
}
.bottom .wechat > div {
  margin: 25px;
  margin-left: 80px;
}
.bottom .wechat img {
  width: 114px;
}
</style>