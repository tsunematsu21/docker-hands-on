<template>
  <div class="result">
    <div v-for="i of Number($route.params.number)" :key="i" class="item">
      <img :src="`https://loremflickr.com/200/300/${$route.query.keyword}?random=${i}`">
    </div>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data () {
    return {
      keyword: 'cat'
    }
  },
  validate ({ params }) {
    return /^\d+$/.test(params.number)
  }
})
</script>

<style lang="scss">
.result {
  display: flex;
  flex-direction: row;
  flex-wrap: wrap;
  justify-content: center;

  .item {
    width: 200px;
    padding :8px;
    img {
      display: block;
      width: 100%;
    }
  }
}
</style>
