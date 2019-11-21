<template>
    <div class="product-app">
        <div class="contain" v-for="(item, index) of list" :key="index">
            <img :src="'http://127.0.0.1:4000/'+item.img_url" alt="">
        </div>
        <mt-button type="primary" size="large" @click="more">加载更多</mt-button><hr>
        <mt-button type="primary" size="large" @click="lianxi">联系我们</mt-button>
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
        lianxi(){
            this.$router.push('/Lianxi')
        },
        more(){
            this.pno++;
            var obj={pno:this.pno};
            var url="zhaoshang";
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
        width: 100%;
        border: 1px soli  #ccc;
    }
    .contain img{
        width: 100%
    }
</style>
