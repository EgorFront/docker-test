<template>
  <div class="home">
    <img alt="Vue logo" src="../assets/logo.png" modernize />
    <HelloWorld msg="Welcome to Your Vue.js App v3" />
  </div>
</template>

<script>
// @ is an alias to /src
import HelloWorld from "@/components/HelloWorld.vue";

export default {
  name: "HomeView",
  components: {
    HelloWorld,
  },
};
</script>
