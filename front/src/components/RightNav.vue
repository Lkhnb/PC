<template>
  <div class="rightnav">
    <div class="r1">
      <div><img src="../assets/rightnav/1.png" /></div>
    </div>
    <div class="r2">
      <div><img src="../assets/rightnav/2.png" /></div>
      <p @click="toCart">
        购<br />物<br />车<br /><span class="num"
          >({{ this.$store.getters.count }})</span
        ><br />
      </p>
    </div>
    <div class="r3">
      <div><img class="d-100" src="../assets/rightnav/3.png" /></div>
      <div><img class="d-100" src="../assets/rightnav/4.png" /></div>
      <div><img class="d-100" src="../assets/rightnav/5.png" /></div>
      <div><img class="d-100" src="../assets/rightnav/6.png" /></div>
    </div>
    <div class="r4">
      <div><img src="../assets/rightnav/7.png" /></div>
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
  methods: {
    toCart() {
      this.$router.push("/cart");
    },
    
  },
};
</script>
<style>
.rightnav {
  position: fixed;
  right: 0;
  top: 0;
  width: 35px;
  height: 100%;
  background-color: #000;
  z-index: 666;
  color: #fff;
}
.rightnav .r1 {
  border-bottom: 1px solid #404040;
  text-align: center;
}
.rightnav .r1 img {
  margin-top: 80px;
}
.rightnav .r2 {
  border-bottom: 1px solid #404040;
  text-align: center;
}
.rightnav .r2 .num {
  color: #cc0000;
}
.rightnav .r3 {
  text-align: center;
}
.rightnav .r3 div{
  width: 35px;
  height: 35px;
}
.rightnav .r3 div {
  margin-top: 30px;
}
.rightnav .r4 {
  width: 35px;
  position: absolute;
  bottom: 0;
  text-align: center;
}
.rightnav .r1 img:hover{
  background-color: #c00000;
}
.rightnav .r2:hover{
  background-color: #c00000;
  color: #FFF;
}
.rightnav .r3 div:hover{
  background-color: #c00000;
}
.rightnav .r4:hover{
  background-color: #c00000;
}
.rightnav .r3 div:nth-child(1):hover{

}
</style>