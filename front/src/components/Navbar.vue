<template>
  <div class="fNavbar">
    <div class="navbar d-flex">
      <div class="d-flex">
        <slot name="left"></slot>
      </div>
      <div>
        <router-link to="/">
          <div class="'active">首页</div>
        </router-link>
      </div>
      <div>
        <router-link to="/aboutus">
          <div>关于我们</div>
        </router-link>
      </div>
      <div>
        <router-link to="/recommand/1">
          <div>商家推荐</div>
        </router-link>
      </div>
      <div>
        <router-link to="/newscentershow">
          <div>新闻中心</div>
        </router-link>
      </div>
      <div>
        <router-link to="/products">
          <div>产品中心</div>
        </router-link>
      </div>
      <div>
        <router-link to="contact">
          <div>联系我们</div>
        </router-link>
      </div>
      <div>
        <router-link to="messages">
          <div>在线留言</div>
        </router-link>
      </div>
    </div>
  </div>
</template>

<script>
export default {};
</script>

<style>
  .fNavbar {
    background-color: #000;
  }
  .fNavbar .navbar {
    text-align: center;
    width: 1000px;
    background-color: #000;
    color: #fff;
    margin: 0 auto;
    height: 40px;
    padding: 0;
  }

  .fNavbar .navbar a {
    text-decoration: none;
    color: #fff;
  }
  .fNavbar .navbar a div{
    width: 100px;
    height: 40px;
    line-height: 40px;
  }
  .fNavbar .navbar a div:hover{
    background-color: #ff5757;
  }
  .fNavbar .navbar a>div:nth-child(2){
    background-color: #ff5757;
  }
</style>