<template>
  <div>
    <navbar></navbar>

    <div class="contact">
      <p class="title">联系我们</p>
      <div class="d-flex pic">
        <div>
          <img src="../assets/contact/1.png" class="d-100" />
          <p>服务邮箱</p>
          <p>2717832082@qq.com</p>
        </div>
        <div>
          <img src="../assets/contact/2.png" class="d-100" />
          <p>技术支持</p>
          <p>特色水果商城</p>
        </div>
        <div>
          <img src="../assets/contact/3.png" class="d-100" />
          <p>公司地址</p>
          <p>成都市浦江县阳湖镇</p>
        </div>
        <div>
          <img src="../assets/contact/4.png" class="d-100" />
          <p>手机二维码</p>
          <p>扫一扫</p>
        </div>
      </div>
      <div class="bottom">
        <img src="../assets/contact/5.png" class="d-100" />
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
.contact .title {
  text-align: center;
  width: 250px;
  font-size: 35px;
  margin: 0 auto;
}
.contact .pic {
  width: 1450px;
  margin: 0 auto;
  text-align: center;
}
.contact .pic > div {
  border-top: 0.5px solid #eee;
  border-left: 0.5px solid #eee;
  border-right: 0.5px solid #eee;
  width: 285px;
  height: 285px;
  margin-right: 20px;
}
.contact .bottom {
  width: 1450px;
  margin: 0 auto;
  background-color: #fff;
}
</style>