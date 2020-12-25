<template>
  <div class="myFooter">
    <div class="cMyFooter">
      <ul class="d-flex">
        <li v-for="(item, i) of data" :key="i">
          <router-link to="/">{{ item }}</router-link>
        </li>
      </ul>
      <p>蜀ICP备17041164 号-1</p>
      <p>www.tssgsc.com</p>
      <img src="../assets/footer/1.gif" />
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      data: [
        "关于我们 |",
        "经典案例 |",
        "新闻动态 |",
        "服务项目 |",
        "咨询团队 |",
        "联系我们",
      ],
    };
  },
};
</script>
<style>
.myFooter {
  margin: 0 auto;
  margin-top: 50px;
  z-index: 666;
}

.myFooter .cMyFooter {
  float: left;
  position: relative;
  left: 36%;
}
.myFooter .cMyFooter > p {
  text-align: center;
}
.myFooter .cMyFooter img {
  position: absolute;
  left: 45%;
}

.myFooter .cMyFooter > ul {
  position: relative;
}
.myFooter li {
  list-style: none;
  white-space: nowrap;
}
.myFooter a {
  text-decoration: none;
  color: #000;
}
</style>