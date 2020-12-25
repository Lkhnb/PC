<template>
  <div>
    <navbar></navbar>

    <div class="login">
      <div class="title">|会员登录页</div>
      <div class="d-flex">
        <div>
          <el-input v-model="uname" placeholder="请输入内容"></el-input>
          <el-input
            placeholder="请输入密码"
            v-model="upwd"
            type="password"
          ></el-input>
          <el-button class="loginButton" type="primary" @click="login"
            >登录</el-button
          >
        </div>
        <div class="right">
          <div>还未成为会员</div>
          <el-button type="danger" @click="toRegister">请先注册</el-button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import Navbar from "../components/Navbar.vue";
export default {
  components: { Navbar },
  props: [""],
  data() {
    return {
      uname: "",
      upwd: "",
    };
  },
  mounted() {},
  methods: {
    login() {
      this.axios
        .get("/user/login", { params: { uname: this.uname, upwd: this.upwd } })
        .then((res) => {
          if (res.data.code == 1) {
            let info=res.data.info;

            alert("登录成功");
            this.userCart(res.data.info.uid);
            this.$router.push("/");
            this.$store.commit("login",info)
          } else {
            alert("账号或密码错误");
          }
        });
    },
    toRegister() {
      this.$router.push("/register");
    },
    userCart(pid){
      this.$store.dispatch("userCart",pid);
    }
  },
};
</script>
<style>
.login {
  margin-left: 50px;
  border-bottom: 1px solid #bbb;
}
.login .title {
  border-bottom: 2px solid #8c0001;
}
.login .right {
  margin-top: 80px;
  margin-left: 200px;
}
.login .el-button {
  background-color: #8c0001;
}
.login .el-input {
  margin: 20px 20px 20px 0;
}
.login > div:nth-child(1) {
  color: #8c0001;
}

.login .d-flex > div:nth-child(1) {
  width: 404px;
}

.login a {
  text-decoration: none;
  color: #000;
}
</style>