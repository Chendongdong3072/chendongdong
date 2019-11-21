<template>
    <div>
        <div id="center">
        <mt-field label="用户名" placeholder="请输入用户名" v-model="uname" :attr={autofocus:true}></mt-field>
        <mt-field label="密码" placeholder="请输入密码" type="password" v-model="upwd"></mt-field>
        <mt-button type="primary" @click="login" size="large">登录</mt-button>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            uname:"",
            upwd:""
        }
    },
    methods:{
        login(){
            var uname=this.uname;
            var upwd=this.upwd;
            var reg=/^[a-z0-9]{3,12}$/i;
            if(reg.test(uname)==false){
                return this.$messagebox("消息","用户名格式不正确");
           }else if(reg.test(upwd)==false){
                return  this.$messagebox("消息","密码格式不正确");
           }
           var url="denglu";
           var obj={uname:uname,upwd:upwd};
           this.axios.get(
               url,
               {params:obj}
           ).then(res=>{
               console.log(res.data.code);
               if(res.data.code<0){this.$messagebox("用户名和密码不正确");}
               else{this.$router.push("/Order");}
           });
        }
    }
}
</script>
<style scoped>
    #center{
        margin-top: 50%
    }
</style>
