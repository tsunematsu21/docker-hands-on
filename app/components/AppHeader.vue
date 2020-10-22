<template>
  <header id="header">
    <h1>
      <i class="ion-search" />&nbsp;
      <nuxt-link to="/">
        Image search
      </nuxt-link>
    </h1>
    <p>
      The sample application for Docker hands-on.
    </p>
  </header>
</template>

<script lang="ts">
import Vue from 'vue'
export default Vue.extend({

})
</script>

<style lang="scss" scoped>
#header {
  background: #232323;
  display: flex;
  flex-direction: column;
  padding: 16px;
  align-items: center;
  width: 100%;

  i {
    color: #942994;
  }
}
</style>
