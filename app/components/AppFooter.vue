<template>
  <footer id="footer">
    <p>
      Handcrafted with <i class="ion-heart" /> by <b>Team ASW</b>.<br>
      Made with <a href="https://nuxtjs.org/" target="_blank">Nuxt.js</a>.
    </p>
  </footer>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({
})
</script>

<style lang="scss" scoped>
#footer {
  background: #232323;
  display: flex;
  padding: 16px;
  justify-content: center;
  width: 100%;

  i {
    color: #942994;
  }
}
</style>
