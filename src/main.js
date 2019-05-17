import Vue from 'vue';
//https://stackoverflow.com/questions/49371467/bootstrap-vue-doesnt-load-css
import BootstrapVue from 'bootstrap-vue'
Vue.use(BootstrapVue)
import 'bootstrap/dist/css/bootstrap.css'
import 'bootstrap-vue/dist/bootstrap-vue.css'

import { sync } from 'vuex-router-sync';
import router from './router';
import store from './store';

import App from './App.vue';

sync(store, router);

new Vue({
  render: (h) => h(App),
  el: '#app',
  router,
  store,
});
