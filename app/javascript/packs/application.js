//------------------------ CUSTOM FILE FROM https://gorails.com/episodes/vuejs-components-in-rails-views ---------------
/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

// import TurbolinksAdapter from 'vue-turbolinks'
// import Vue from 'vue/dist/vue.esm'
// import App from '../app.vue'

// Vue.use(TurbolinksAdapter)
// Vue.component('app', App)



// document.addEventListener('turbolinks:load', () => {
//   const props = JSON.parse(element.getAttribute('data'))
//   const bookApp = new Vue({
//     el: '#bookApp',
//     template: app,
//     render: h => h(bookApp, { props }),
//   })
// })

import Vue from 'vue/dist/vue.esm'
import UserCard from '../app'

document.addEventListener('DOMContentLoaded', () => {
  let element = document.getElementById("user-card")
  let list = element.dataset.list
  console.log(typeof list);
  console.log(Array.from(list));
  list = list.split(",");
  console.log(typeof list);
  console.log(list[0]);

  const app = new Vue({
    el: element,
    data: { 
      list:  Array.from(list),
    },
    template: '<UserCard :list="list"/>',
    components: { UserCard }
  })
})
//-----------------------------------------------------------------------------------------------------------------