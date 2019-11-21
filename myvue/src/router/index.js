import Vue from 'vue'
import VueRouter from 'vue-router'
import Home from '../views/Home.vue'
import Shouye from '../views/Shouye.vue'
import Tuijian from '../views/Tuijian.vue'
import Login from '../views/Login.vue'
import Cart from '../views/Cart.vue'
import Xianglian from '../views/Xianglian.vue'
import Shoulian from '../views/Shoulian.vue'
import Zuanshi from '../views/Zuanshi.vue'
import Hunjie from '../views/Hunjie.vue'
import Erhuan from '../views/Erhuan.vue'
import Baoyu from '../views/Baoyu.vue'
import Xiangqing from '../views/Xiangqing.vue'
import Order from '../views/Order.vue'
import Zhaoshang from '../views/Zhaoshang.vue'
import Cehua from '../views/Cehua.vue'
import Lianxi from '../views/Lianxi.vue'
import Mingxing from '../views/Mingxing.vue'
import Zhifu from '../views/Zhifu.vue'

Vue.use(VueRouter)

const routes = [
  {path: '/',component: Shouye},
  {path: '/about',
    // route level code-splitting
    // this generates a separate chunk (about.[hash].js) for this route
    // which is lazy-loaded when the route is visited.
    component: () => import(/* webpackChunkName: "about" */ '../views/About.vue')
  },
  {path: '/Shouye',component: Shouye},
  {path: '/Tuijian',component: Tuijian},
  {path: '/Login',component: Login},
  {path: '/Cart',component:Cart},
  {path: '/Xianglian',component:Xianglian},
  {path: '/Shoulian',component:Shoulian},
  {path: '/Zuanshi',component:Zuanshi},
  {path: '/Hunjie',component:Hunjie},
  {path: '/Erhuan',component:Erhuan},
  {path: '/Baoyu',component:Baoyu},
  {path: '/Xiangqing',component:Xiangqing},
  {path: '/Order',component:Order},
  {path: '/Zhaoshang',component:Zhaoshang},
  {path: '/Cehua',component:Cehua},
  {path: '/Lianxi',component:Lianxi},
  {path: '/Mingxing',component:Mingxing},
  {path: '/Zhifu',component:Zhifu},
]

const router = new VueRouter({
  routes
})

export default router
