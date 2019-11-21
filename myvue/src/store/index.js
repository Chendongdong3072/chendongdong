import Vue from 'vue'
import Vuex from 'vuex'

Vue.use(Vuex)

export default new Vuex.Store({
  state: {
    count:0
  },
  getters:{
    cartCount(state){
      this.state.count++
    }
  },
  mutations: {
    Count(state){
      this.state.count++
    }
  },
  actions: {
  },
  modules: {
  }
})
