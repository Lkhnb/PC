<template>
  <div class="top d-flex">
    <div class="t1">
        <el-breadcrumb separator="|">
            <el-breadcrumb-item to="/login" v-if="this.$store.state.logined==0">会员登录</el-breadcrumb-item>
            <el-breadcrumb-item  v-else>欢迎你,{{this.$store.state.info.uname}}<a @click="logout">注销</a></el-breadcrumb-item>
            <el-breadcrumb-item to="/register">会员注册</el-breadcrumb-item>
        </el-breadcrumb>
    </div>
    <div class="t2">
        <el-breadcrumb separator="|">
            <el-breadcrumb-item>设为首页</el-breadcrumb-item>
            <el-breadcrumb-item>加入收藏</el-breadcrumb-item>
            <el-breadcrumb-item to="/messages">在线留言</el-breadcrumb-item>
            <el-breadcrumb-item>手机站</el-breadcrumb-item>
        </el-breadcrumb>
    </div>
  </div>
</template>

<script>

  export default {
    name:'',
    props:[''],
    data () {
      return {

      };
    },
    methods:{
      logout(){
        this.$store.commit("logout");
        this.$router.push("/");
      }
    }


  }

</script>
<style>
    .top{
        background-color:#f5f5f5 ;
        height: 30px;
        position: relative;
         white-space: nowrap;
    }
    .top>div{
      white-space: nowrap;
    }
    .top .t1 {
        position: absolute;
        left: 200px;
        top: 7px;
    }

    .top .t2{
        position: absolute;
        right: 200px;
        top: 7px;
    }
</style>