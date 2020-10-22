<template>
  <div id="app">
    <app-header />
    <main>
      <nuxt />
    </main>
    <app-footer />
  </div>
</template>

<script lang="ts">
import Vue from 'vue'
import AppHeader from '~/components/AppHeader.vue'
import AppFooter from '~/components/AppFooter.vue'

export default Vue.extend({
  components: {
    AppHeader,
    AppFooter
  }
})
</script>

<style lang="scss">
@import url('https://fonts.googleapis.com/css2?family=Open+Sans&display=swap');

#app {
  display: flex;
  min-height: 100vh;
  flex-direction: column;
  main {
    flex: 1 0 auto;
    display: flex;
    align-items: center;
    justify-content: center;
  }
}
</style>
