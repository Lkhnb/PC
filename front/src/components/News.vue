<template>
  <div class="news d-flex">
    <div class="title">
      <p>新闻资讯</p>
      <div><img src="../assets/news/news_1.jpg" /></div>
      <div><img src="../assets/news/news_2.jpg" /></div>
    </div>
    <div class="articles">
      <div class="cArticles">
        <p>智利食用葡萄季结束出口数量同比增加4%</p>
        <p>
          2016/2017年度智利食用葡萄季结束，水果出口商协会的最终报告显示，本季智利出口了730264吨食用葡萄，比上一季增加了四个百分点......
        </p>
      </div>
      <div>
        <div class="d-flex justify-content-between">
          <p>你喜欢的水果珍珠怎么做，看这一篇就够了，包学包会</p>
          <p>2019-05-08</p>
        </div>
        <div class="d-flex justify-content-between">
          <p>这9种奇形怪状的蔬菜水果，你见过几种？</p>
          <p>2019-05-08</p>
        </div>
        <div class="d-flex justify-content-between">
          <p>用水果来做菜对身体非常有好处 好吃易学的水果菜</p>
          <p>2019-05-08</p>
        </div>
        <div class="d-flex justify-content-between">
          <p>皮肤偏黄的女生，多吃这4种水果，比敷面膜有用！</p>
          <p>2019-05-08</p>
        </div>
        <div class="d-flex justify-content-between">
          <p>你爱吃水果吗？知道它们都有哪些营养价值吗？</p>
          <p>2019-05-08</p>
        </div>
      </div>
    </div>
    <div class="pic"><img src="../assets/news/news_3.png" class="d-100" /></div>
  </div>
</template>

<script>
export default {
  name: "",
  props: [""],
  data() {
    return {};
  },
};
</script>
<style>
.news {
  width: 1450px;
  margin: 0 auto;
  margin-top: 80px;
}

.news .title {
  width: 217px;
  height: 363px;
  background-color: #004899;
}

.news .title p {
  color: #fff;
  font-size: 35px;
}

.news .articles div {
  background-color: #eee;
}

.news .articles .cArticles > p:nth-child(1) {
  background-color: #545454;
  font-size: 20px;
  text-align: center;
}

.news .pic img {
  width: 429px;
}
</style>