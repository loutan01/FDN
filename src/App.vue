<template>
  <div id="app">
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between">
        <a class="navbar-brand js-scroll-trigger" href="#">FDN</a>
        <form class="form-inline">
          <Login v-if="authenticated === false"/>
          <div v-else>
            <router-link to="/firstPage" >Profile</router-link>
            <router-link to="/secondPage">Go to SecondPage</router-link>
          </div>



        </form>
    </nav>
   <router-view @authenticated="setAuthenticated" />
  </div>
</template>

<script>
import Login from './components/Login.vue'
export default {
  name: 'app',
  data() {
            return {
                authenticated: true,
                mockAccount: {
                    username: "Tipper",
                    password: "MindHatch"
                }
            }
        },
        mounted() {
            if(!this.authenticated) {
                this.$router.replace({ name: "login" });
            }
        },
        methods: {
            setAuthenticated(status) {
                this.authenticated = status;
                this.$forceUpdate();
            },
            logout() {
                this.authenticated = false;
            }
        },
  components: {
    Login
  }
}

</script>
