import Vue from 'vue'
import Vuex from 'vuex'
import axios from 'axios'

Vue.use(Vuex)

export default new Vuex.Store({
  state: localStorage.getItem('state') ? JSON.parse(localStorage.getItem('state')) : {
    cartList: [],
    logined: 0,
    info: {},
    total: 0,
  },

  mutations: {
    addCart(state, payload) {
      let oldProduct = state.cartList.find(item => item.title == payload.title);
      if (oldProduct) {
        oldProduct.num += 1;
      } else {
        state.cartList.push(payload);
      }

    },
    login(state, payload) {
      state.logined = 1;
      state.info = payload;
    },
    logout(state) {
      localStorage.clear();
      state.logined = 0;
      state.cartList = [];
    },
    addOneCart(state, payload) {
      let oldProduct = state.cartList.find(item => item.title === payload.title);
      if (oldProduct) {
        oldProduct.num += 1;
      } else {
        state.cartList.push(payload);
      }
    },
    addUserCart(state, payload) {
      state.cartList = payload;
    },
    delOne(state, payload) {
      state.cartList.splice(payload.i, 1);
    },

  },
  getters: {
    count(state) {
      if (state.cartList.length > 0) {
        return state.cartList.length;
      } else {
        return 0;
      }

    },


  },
  actions: {
    userCart(context, pid) {
      axios.get(`/cart/${pid}`)
        .then(res => {
          context.commit("addUserCart", res.data);
        })
    },
    addCartAction(context, product) {
      if (context.state.logined == 1) {
        let oldProduct = context.state.cartList.find(item => item.title === product.title);
        if (!oldProduct) {
          axios.post("/cart/add", `title=${product.title}&price=${product.price}&num=${product.num}&pic=${product.pic}&uid=${product.uid}`)
            .then(res => {
              if (res.data.code == 200) {
                alert("该商品已成功加入购物车");
                context.commit("addOneCart", product);
              }
            })
        } else {

          axios.post("/cart/addOneNum", `num=${oldProduct.num}&title=${product.title}&uid=${context.state.info.uid}`)
            .then(res => {
              if (res.data.code == 200) {
                context.commit("addOneCart", product);
              }
            })
        }

      } else {
        context.commit("addCart", product);
      }
    },
    incrementCartAction(context, product) {
      if (context.state.logined == 1) {
        axios.post("/cart/incrementOneNum", `num=${product.num}&title=${product.title}&uid=${context.state.info.uid}`);
      }
    },
    delAction(context, item) {
      axios.post("/cart/delOne", `title=${item.item.title}&uid=${context.state.info.uid}`)
        .then(res => {
          if (res.data.code == 200) {
            context.commit("delOne", item);
          }
        })
    }
  }
})
