<template>
  <div>
    <navbar></navbar>

    <div class="newscenter">
      <div>
        <p class="title">{{ result.title }}</p>
        <p v-html="result.content" class="content"></p>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      result: {},
    };
  },
  mounted() {
    this.axios
      .get(`/newscenter/newscenter/${this.$route.params.pid}`)
      .then((res) => {
        this.result = res.data[0];
      });
  },
};
</script>
<style>
.newscenter {
  width: 868px;
  margin: 0 auto;
}
.newscenter .title {
  font-size: 32px;
  color: #555555;
  text-align: center;
}
.newscenter .content {
  font-size: 17px;
  color: #333333;
}
</style>