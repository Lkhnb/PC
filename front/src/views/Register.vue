<template>
  <div>
    <navbar></navbar>

    <div class="register">
      <div class="title">|会员注册页</div>
      <div>
        会员注册!已经有账号了吗?<router-link to="/login" class="loginButton"
          >登录</router-link
        >
      </div>
      <div>用户名*<el-input v-model="uname"></el-input></div>
      <div>密码*<el-input v-model="upwd" type="password"></el-input></div>
      <div>密码确认*<el-input v-model="cnupwd"></el-input></div>
      <div>邮箱*<el-input v-model="email" type="email"></el-input></div>
      <div>
        <el-button type="danger" @click="register" class="registerButton"
          >注册</el-button
        >
      </div>
    </div>
  </div>
</template>
  
  <script>
export default {
  props: [""],
  data() {
    return {
      uname: "",
      upwd: "",
      cnupwd: "",
      email: "",
    };
  },
  mounted() {},
  methods: {
    register() {
      this.axios
        .post(
          "/user/reg",
          `uname=${this.uname}&upwd=${this.upwd}&email=${this.email}`
        )
        .then((res) => {
          console.log(res.data);
          if (res.data.code == 200) {
            alert("注册成功,请先登录");
            this.$router.push("/login");
          } else {
            alert("格式有误，请重新输入");
          }
        });
    },
  },
};
</script>
<style>
.register {
  margin-left: 50px;
  border-bottom: 1px solid #bbb;
}
.register .loginButton {
  font-size: 25px;
}
.register .registerButton {
  background-color: #8c0001;
}
.register .title {
  border-bottom: 2px solid #8c0001;
}
.register > :nth-child(1) {
  color: #8c0001;
}
.register .el-input {
  width: 500px;
  margin: 20px 20px 20px 0;
}
.register a {
  text-decoration: none;
  color: #000;
}
</style>