<template>
  <!-- aspect general de l'application -->
  <div id="app">
    <div id="nav" class="navbar navbar-expand-lg bg-dark">
      <router-link class="nav-link" to="/">Home</router-link>
      <router-link class="nav-link" to="/about">About</router-link>
    </div>
    <router-view/>
  </div>
</template>

<script>
// pas de script pour l'instant
</script>

<style>
</style>
