<template>
  <div class="about">
    <span class="title">
      <h2>关于我们</h2>
      <h5>ABOUT US</h5>
    </span>
    <div class="d-flex">
      <div><img src="../assets/about/about.png" /></div>
      <p>
        特色水果商城以店铺零售运营为核心，逐步建立一支从采购、店铺销售、仓储等全方位的专业运营管理团队，最终形成强大的水果供应链系统，让更多人吃到安全、新鲜、绿色、营养的水果。<br />特色水果商城产品定位主要以中高端水果为主，目前水果品类主要涵盖三大类:进口水果、地域特色水果、时令水果三大类近100多个品种，目前与各产地水果基地建立了紧密的战略合作关系，直接基地采购的比例在逐步扩大，未来计划将建立自己的水果种植基地，相关计划已经在紧锣密鼓的准备中。
      </p>
    </div>
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
.about {
  width: 1450px;
  margin: 0 auto;
  margin-top: 300px;
}
.about .title {
  position: relative;
  text-align: center;
}
.about .title h2 {
  width: 150px;
  border-bottom: 2px solid #fd7200;
  position: relative;
  left: 44%;
}
</style>