import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
import VueRouter from 'vue-router'
import MyHeader from '@/components/MyHeader'
import LeftNav from '@/components/LeftNav'
import MyFooter from '@/components/MyFooter'
import RightNav from '@/components/RightNav'
import Navbar from '@/components/Navbar'
import Top from '@/components/Top'
import axios from "axios"
import ElementUI from 'element-ui' 
import 'element-ui/lib/theme-chalk/index.css' 

Vue.use(ElementUI);
Vue.config.productionTip = false
axios.defaults.baseURL="/api";
Vue.prototype.axios=axios;

//解决element-ui中重复点菜单的问题

const originalPush=VueRouter.prototype.push
VueRouter.prototype.push=function push(location){
  return originalPush.call(this,location).catch(err=>err)
}



Vue.component("my-header",MyHeader);
Vue.component("left-nav",LeftNav);
Vue.component("my-footer",MyFooter);
Vue.component("right-nav",RightNav);
Vue.component("top",Top);
Vue.component("navbar",Navbar);
new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
