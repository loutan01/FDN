<template>
  <div class="login">
    <form @submit.prevent="login">
      <ul class="navbar-nav ml-auto">
        <li class="nav-item mx-0 mx-lg-1">
          <b-form-input id="email" type="email" placeholder = "email"></b-form-input>
        </li>
        <li class="nav-item mx-0 mx-lg-1">
          <b-form-input id="password" type="password" placeholder = "password"></b-form-input>
        </li>
        <li class="nav-item mx-0 mx-lg-1">
          <button class="btn btn-primary btn-block" type="submit">Login</button>
        </li>
      </ul>
    </form>
  </div>
</template>
<script>
export default {
     template: '<Login/>',
     name: 'login',
}
</script>
