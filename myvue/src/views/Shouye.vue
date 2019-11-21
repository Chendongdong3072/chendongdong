<template>
    <div>
        <div class="top">
            <mt-swipe :show-indicators="false">
                <mt-swipe-item><img src="../../public/image/1.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/5.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/9.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/8.jpg" alt=""></mt-swipe-item>
            </mt-swipe>
        </div>
        <div class="juzhong">
            <router-link to="/Xianglian"><img class="tupian" src="../../public/image/11.png" alt=""> </router-link>
            <router-link to="/Shoulian"><img class="tupian" src="../../public/image/12.png" alt=""> </router-link>
            <router-link to="/Zuanshi"><img class="tupian" src="../../public/image/13.png" alt=""> </router-link>
        </div>
        <div class="juzhong">
            <router-link class="wenzi" to="/Xianglian">项链</router-link>
            <router-link class="wenzi" to="/Shoulian">手链</router-link>
            <router-link class="wenzi" to="/Zuanshi">钻石</router-link>
        </div>
        <div class="juzhong">
            <router-link to="/Hunjie"><img class="tupian" src="../../public/image/14.png" alt=""> </router-link>
            <router-link to="/Erhuan"><img class="tupian" src="../../public/image/15.png" alt=""> </router-link>
            <router-link to="/Baoyu"><img class="tupian" src="../../public/image/16.png" alt=""> </router-link>
        </div>
        <div class="juzhong">
            <router-link class="wenzi" to="/Hunjie">婚戒</router-link>
            <router-link class="wenzi" to="/Erhuan">耳环</router-link>
            <router-link class="wenzi" to="/Baoyu">宝玉</router-link>
        </div>
        <div class="juzhong">
            <router-link to="/Zhaoshang"><img class="tupian" src="../../public/image/17.png" alt=""> </router-link>
            <router-link to="/Mingxing"><img class="tupian" src="../../public/image/18.png" alt=""> </router-link>
            <router-link to="/Cehua"><img class="tupian" src="../../public/image/19.png" alt=""> </router-link>
        </div>
        <div class="juzhong">
            <router-link class="wenzi" to="/Zhaoshang">品牌招商</router-link>
            <router-link class="wenzi" to="/Mingxing">明星推荐</router-link>
            <router-link class="wenzi" to="/Cehua">婚礼策划</router-link>
        </div><br>
        <div class="top">
            <mt-swipe :show-indicators="false">
                <mt-swipe-item><img src="../../public/image/1111.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/2222.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/3333.jpg" alt=""></mt-swipe-item>
                <mt-swipe-item><img src="../../public/image/4444.jpg" alt=""></mt-swipe-item>
            </mt-swipe>
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
        return{
            selected:"首页"
        }
    }
}
</script>
<style scoped>
    .top{
        width:100%;
        height: 138px;
    }
     .top img{
         width: 100%;
         border-radius: 50px
     }
     .juzhong{
         display: flex;
         justify-content: space-around;
         margin-top: 5px;
     }
     .tupian{
         width: 50%;
         background-color: beige;
         border-radius: 50%;
         margin-bottom: 3px
     }
     .wenzi{
         text-decoration: none;
         color: black;
     }
     
</style>