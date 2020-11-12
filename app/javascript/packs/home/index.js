import Vue from 'vue';
import Index from "../../components/home/Index.vue";

document.addEventListener('DOMContentLoaded', () => {
  const node = document.getElementById('homeIndex');
  const props = JSON.parse(node.getAttribute('data'));
  const app = new Vue({
    render: h => h(Index, { props })
  }).$mount();
  document.body.appendChild(app.$el);
});
