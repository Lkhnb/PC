<template>
  <div>
    <navbar></navbar>

    <div class="messages">
      <div v-for="(item, i) of result" :key="i" class="content d-flex">
        <div class="author">
          <p>{{ item.author }}</p>
          <p>{{ item.tim }}</p>
        </div>
        <div class="mesg">
          <p>留言内容</p>
          <p>{{ item.content }}</p>
          <p class="reply" v-html="item.reply"></p>
          <p>回复</p>
        </div>
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
    this.axios.get("/messages/messages").then((res) => {
      this.result = res.data;
    });
  },
};
</script>

<style>
.messages .content {
  width: 1000px;
  margin: 5px;
  border: 1px dashed #aaa;
}
.messages .content .author {
  border-right: 1px dashed #aaa;
}
.messages .content .mesg .reply {
  border-top: 1px solid #aaa;
}
</style>