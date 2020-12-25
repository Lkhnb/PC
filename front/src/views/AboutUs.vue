<template>
  <div>
    <navbar></navbar>
    <div class="aboutus">
      <div class="top">
        <button class="title">水果分类</button>
        <p class="subtitle">
          有品质才有市场，有改善才有进步，优质建设，以质为根
        </p>
      </div>
      <div class="content d-flex">
        <div class="left">
          <p>浆果类：草莓，蓝莓，黑莓，桑葚，覆盆子，葡萄</p>
          <p>
            柑橘类：蜜橘，砂糖橘，金橘，蜜柑，甜橙，脐橙，西柚，柚子，葡萄柚，柠檬，文<br />旦，莱姆
          </p>
          <p>
            核果类：桃（油桃，蟠桃，水蜜桃，黄桃），李子，樱桃，杏，梅子，杨梅，西梅，<br />乌梅，大枣，沙枣，海枣，蜜枣，橄榄，荔枝，龙眼（桂圆），槟榔
          </p>
          <p>
            仁果类：苹果（红富士，红星，国光，秦冠，黄元帅），梨（砂糖梨，黄金梨，<br />莱阳梨，香梨，雪梨，香蕉梨），蛇果，海棠果，沙果，柿子，山竹，黑布林，<br />枇杷，杨桃，山楂，圣女果，无花果，白果，罗汉果，火龙果，猕猴桃
          </p>
          <p>
            瓜类：西瓜，美人瓜，甜瓜，香瓜，黄河蜜，银瓜，哈密瓜，木瓜，乳瓜
          </p>
          <p>
            其他：菠萝，芒果，栗子，椰子，奇异果，芭乐，榴莲，香蕉，甘蔗，莲子，石榴，<br />核桃，拐枣
          </p>
        </div>
        <div class="right">
          <div class="d-flex">
            <div><img src="../assets/aboutus/1.png" /></div>
            <div>
              <div><img src="../assets/aboutus/2.png" /></div>
              <div><img src="../assets/aboutus/3.png" /></div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {};
  },
};
</script>

<style>
.aboutus {
  background-color: #ffba52;
  height: 650px;
  color: #fff;
  text-align: center;
}
.aboutus .title {
  margin-top: 40px;
  font-size: 35px;
  background-color: #ffba52;
  color: #fff;
  border: 3px solid #fff;
  width: 180px;
}
.aboutus .subtitle {
  margin: 30px 60px;
}
.aboutus .content {
  width: 1200px;
  margin: 0 auto;
  position: relative;
  border-top: 1px solid #eee;
  top: 200px;
}
.aboutus .content img {
  margin: 5px;
}
</style>