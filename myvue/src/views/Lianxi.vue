<template>
    <div>
        <h5>-----请留下您的联系方式-----</h5>
        <hr>
        <img src="../../public/image/1111.jpg" alt="">
        <mt-field label="您的名字" placeholder="请输入用户名" v-model="username"></mt-field><br>
        <mt-field label="您的邮箱" placeholder="请输入邮箱" type="email" v-model="email"></mt-field><br>
        <mt-field label="联系手机" placeholder="请输入手机号" type="tel" v-model="phone"></mt-field><br>
        <mt-button type="primary" size="large" @click="tijiao">提交</mt-button>
        <h5>我们会第一时间跟您取得联系</h5>
        <h5>请您随时保持手机畅通</h5>
        <img src="../../public/image/7777.jpg" alt="">
    </div>
</template>
<script>
export default {
    data(){
        return{
           username:"",
            email:"",
            phone:"",
        }
    },
    methods:{
        tijiao(){
            if(this.username==""){
                return this.$messagebox("消息","用户名不能为空");
            }else if(this.phone==""){
                return this.$messagebox("消息","请您填写正确的手机号");
            }else{
                 this.$messagebox("消息","提交成功，请保持手机畅通");
                 this.$router.push("/Shouye")
            }
            
        }
    }
}
</script>
<style scoped>
img{
    width: 100%;
    border-radius: 50px
}
</style>
