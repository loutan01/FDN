<template>
  <div class="login">
    <form @submit.prevent="login" class = "form-inline">
      <ul class="navbar-nav">
        <li class="nav-item mx-0 mx-lg-1">
          <b-form-input id="username" v-model="input.username" placeholder = "username"></b-form-input>
        </li>
        <li class="nav-item mx-0 mx-lg-1">
          <b-form-input id="password" v-model="input.password" placeholder = "password"></b-form-input>
        </li>
        <li class="nav-item mx-0 mx-lg-1">
          <button class="btn btn-primary btn-block" v-on:click="login()">Login</button>
        </li>
      </ul>
    </form>
  </div>
</template>
<script>
export default {
      name: 'Login',
      data() {
          return {
              input: {
                  username: "",
                  password: ""
              }
          }
      },
      methods: {
          login() {
              if(this.input.username != "" && this.input.password != "") {
                  if(this.input.username == this.$parent.mockAccount.username && this.input.password == this.$parent.mockAccount.password) {
                      this.$emit("authenticated", true);
                      this.$router.replace({ name: "second" });

                  } else {
                      console.log("The username and / or password is incorrect");
                  }
              } else {
                  console.log("A username and password must be present");
              }
          }
      }
  }
</script>
