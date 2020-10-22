<template>
  <div class="content">
    <form @submit.prevent="search">
      <div class="field">
        <label for="keyword">Keyword</label>
        <input id="keyword" v-model="keyword" type="text" name="keyword" placeholder="e.g. cat, dog">
      </div>
      <div class="field">
        <label for="number">Number of results</label>
        <input
          id="number"
          v-model="number"
          type="number"
          name="number"
          min="10"
          max="100"
        >
      </div>
      <button type="submit">
        <i class="ion-search" /> Search
      </button>
      <br>
    </form>
    <nuxt-child />
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
  data () {
    return {
      keyword: this.$route.query.keyword ?? '',
      number: Number(this.$route.params.number) ? Number(this.$route.params.number) : 30
    }
  },
  methods: {
    search () {
      this.$router.push({
        path: `/${this.number}`,
        query: {
          keyword: this.keyword
        }
      })
    }
  }
})
</script>

<style lang="scss">
.content {
  display: flex;
  flex-direction: column;
  justify-content: center;
  padding: 16px;
}
form {
  display: flex;
  justify-content: center;
  .field {
    padding-right: 24px;
  }
  label {
    padding-right: 16px;
  }
  input {
    height: 32px;
    &[name="keyword"] {
      width: 128px;
    }
    &[name="number"] {
      width: 64px;
    }
  }
  button[type="submit"] {
    background: #942994;
    border: 1px solid #691d69;
    border-radius: 4px;
    color: #ffffff;
    cursor: pointer;
    padding: 0 16px;
  }
}
</style>
