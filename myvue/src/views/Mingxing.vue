<template>
      <div class="product-app">
        <div class="contain" v-for="(item, index) of list" :key="index">
            <img :src="'http://127.0.0.1:4000/'+item.img_url" alt="">
            <div class="xianglian">{{item.title}}</div><br>
            <div class="xianglian">￥{{item.price}}</div>
            <mt-button class="details1" @click="addCart" :data-lid="item.lid" :data-lname="item.lname" :data-price="item.price">加入购物车</mt-button>
        </div>
        <mt-button class="details1" type="primary" size="large" @click="jumpCart">查看购物车</mt-button>
        <mt-button class="details1" type="primary" size="large" @click="more">加载更多</mt-button>
    </div>
</template>
<script>
export default {
    data(){
        return {
            list:[],
            pno:0
        }
    },
    created() {
        this.more();
    },
    methods:{
        jumpCart(){
            this.$router.push("/Cart")
        },
        addCart(e){
            this.$store.commit('Count')
            var lid=e.target.dataset.lid;
            var lname=e.target.dataset.lname;
            var price=e.target.dataset.price;
            var url="addCart";
            var obj={lid,lname,price};
            this.axios.get(
                url,
                {params:obj}
            ).then(
                res=>{
                    if(res.data.code==-1){
                        this.$toast("请登录")
                    }else{
                        this.$toast("添加成功")
                    }
                   
                }
            )
        },
        more(){
            this.pno++;
            var obj={pno:this.pno};
            var url="mingxing";
            this.axios.get(
                url,
                {params:obj}
             ).then(res=>{
                 console.log(res.data.data);
                 var row=this.list.concat(res.data.data);
                 this.list=row
             });
        },
        onload(){

        }
    }
}
</script>
<style scoped>
    .product-app{
        display: flex;
        justify-content: space-between;
        flex-wrap: wrap;
        padding: 4px
    }
    .contain{
        width: 49%;
        border: 1px soli  #ccc;
        border-radius: 5px;
        margin: 2px 0;
        padding: 2px;
        box-sizing: border-box;
        display: flex;
        flex-direction: column;
        min-height: 247px
    }
    .contain img{
        width: 100%
    }
    .details{
        text-decoration: none;
        color: white;
        padding: 10px;
        margin-top: 15px;
        background-color: #800000;
        border-radius: 20px;
        font-size: 18px
    }
    .details1{
        color: white;
        margin-top: 15px;
        background-color: #800000;
        border-radius: 20px;
        margin-bottom: 5px
    }
    .xianglian{
        color: black;
        font-size: 20px
    }
</style>
