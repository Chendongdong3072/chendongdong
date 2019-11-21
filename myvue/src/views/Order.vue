<template>
    <div>
        <h2>我的</h2><hr>   
        <div class="juzhong">
            <div>我的订单</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div class="juzhong">
            <div>我的收藏</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div class="juzhong">
            <div>我的物流</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div class="juzhong">
            <div>浏览记录</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div class="juzhong">
            <div>设置</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div class="juzhong">
            <div>关于</div>
            <div><router-link class="lianjie" to="#">>></router-link></div>
        </div>
        <div>
            <mt-tabbar v-model="selected">
                <mt-tab-item id="首页">
                    <img slot="icon" src="../../public/image/shouye.png">
                    <router-link class="wenzi" to="/Shouye">首页</router-link>
                </mt-tab-item>
                <mt-tab-item id="推荐">
                    <img slot="icon" src="../../public/image/tuijian.png">
                    <router-link class="wenzi" to="/Tuijian">推荐</router-link>
                </mt-tab-item>
                <mt-tab-item id="订单">
                    <img slot="icon" src="../../public/image/dingdan.png">
                    <router-link class="wenzi" to="/Order">订单</router-link>
                </mt-tab-item>
                <mt-tab-item id="我的">
                    <img slot="icon" src="../../public/image/wode.png">
                    <router-link class="wenzi" to="/Login">我的</router-link>
                </mt-tab-item>
            </mt-tabbar>
        </div>
    </div>
</template>
<script>
export default {
    data(){
        return {
            selected:"首页"
        }
    }
}
</script>
<style scoped>
    .juzhong{
        display: flex;
        justify-content: space-between;
        padding: 20px;
        margin-top: 28px;
        border-radius: 50px;
        background-color:  beige;
        font-weight: bold
    }
    .lianjie{
        text-decoration: none;
        color: black;
    }
    .wenzi{
         text-decoration: none;
         color: black;
     }
     
</style>
