<template>
  <div id="app">
    <nav class="navbar navbar-expand-lg navbar-light bg-light justify-content-between">
        <a class="navbar-brand js-scroll-trigger" href="#">FDN</a>
        <form class="form-inline">

        <div id="components-demo">
          <button-counter></button-counter>
        </div>
        <button @click="swapComponent(null)">Close</button>
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
  components: {
    Login,
    'button-counter': {
      data: function () {
        return {
          count: 0
        }
      },
      template: '<button type="button" v-on:click="count++">You clicked me {{ count }} times.</button>'
    },
  },
  name: 'app',
  data() {

            return {
                currentComponent: null,
                componentsArray: ['foo', 'bar'],
                authenticated: true,
                mockAccount: {
                    username: "Tipper",
                    password: "MindHatch"
                },

                count: 0,
                swapComponent(component){
                this.currentComponent = component;
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
            },
            logout() {
                this.authenticated = false;
            }
        },
  }
</script>
