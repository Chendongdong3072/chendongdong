<template>
    <div>
        <h1>购物车</h1>
        <div><input type="checkbox" @change="selectAll" v-model="allcd">全选</div>
        <div class="cart-item" v-for="(item, index) in list" :key="index">
            <div class="leftText">
                <input type="checkbox" name="" id=""  v-model="item.cd" @change="itemchange">
                <div class="lname">{{item.lname}}</div>
                <div class="price">￥{{item.price}}</div>
            </div>
            <mt-button @click="del" :data-id="item.id">删除</mt-button>
         </div>
        <div>
            购物车中商品数量
            <span style="color:red">{{this.$store.state.count}}</span>
            <mt-button @click="delm">删除选中商品</mt-button><br>
            <mt-button type="danger" size="large" @click="zhifu">支付</mt-button>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
         list:[],
         allcd:false
        }
    },
    created() {
        this.lodeMore()
    },
    methods:{
        zhifu(){
            this.$router.push("/Zhifu")
        },
        itemchange(){
            var sum=0;
            for (var item of this.list) {
                if(item.cd){
                    sum++;
                }
            }
            console.log(sum);
            console.log(this.list.length);
            if(sum==this.list.length){
                this.allcd=true
            }else{
                this.allcd=false
            }
        },
        delm(){
            this.$messagebox.confirm("确认删除选中商品").then(res=>{
                var str="";
                for (var item of this.list) {
                    if(item.cd){
                        str+=item.id+","
                    }
                }
                if(str.length==0){
                    this.$messagebox("请选择删除的商品");
                    return
                }
                    str=str.substring(0,str.length-1);
                    // console.log(str);
                    var url="delm";
                    var obj={id:str};
                    this.axios.get(url,{params:obj}).then(res=>{
                    //    console.log(res);
                       this.lodeMore();
                       this.$toast("删除成功")
                    })
                }
                
            ).catch(res=>{})
        },
        selectAll(e){
            var all=e.target.checked;
            for (var item of this.list) {
                item.cd=all
            }
        },
        del(e){
            this.$messagebox.confirm("是否删除指定商品").then(res=>{
            var id=e.target.dataset.id;
            console.log(id);
            var url="del";
            var obj={id};
            this.axios.get(
                url,
                {params:obj}
            ).then(
                res=>{
                    if(res.data.code>0){
                        this.$toast("删除成功");
                        this.lodeMore();
                    }
                }
            )
             }).catch(err=>{

            })
           
        },
        lodeMore(){
            var url="findcart";
            this.axios.get( url).then(
                res=>{
                    if(res.data.code==-1){
                        this.$messagebox("消息","请登录").then(res=>{
                            this.$router.push("/Login")
                        })
                    }else{
                        var list=res.data.data;
                        for (var item of list) {
                            item.cd=false;
                        }
                        this.list=list;
                        // this.$store.commit("clear1");
                        for (var item of this.list) {
                            // this.$store.commit("supItem");

                        }
                    }
                    
                }
            )
        }
    }
}
</script>
<style scoped>
    .cart-item{
        display: flex;
        justify-content: space-between;
        align-items: center;
        border: 1px solid #ccc;
        margin-top: 25px
    }
    .leftText{
        display: flex;
        align-items: center;
        margin-left: 20px
    }
    .lname{
        margin-left: 25px;
        color: #333;
    }
    .price{
        margin-left: 25px;
        color: red;
    }
</style>

