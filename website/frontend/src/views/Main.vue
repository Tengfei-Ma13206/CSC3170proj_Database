<template>
    <div>
        <el-container>
            <el-aside width="auto" class="fixed-aside">
                <common-aside></common-aside>
            </el-aside>
            <el-container>
                <el-header class="fixed-header">
                    <common-header></common-header>
                </el-header>
                <el-main class="scrollable-main">
                    <router-view class="view"></router-view>
                </el-main>
            </el-container>
        </el-container>
    </div>
</template>

<script>
import CommonAside from '@/components/CommonAside.vue';
import CommonHeader from '@/components/CommonHeader.vue';
export default {
    data() {
        return {
            message: 'Hello Vue!'
        }
    },
    components: {
        CommonAside,
        CommonHeader
    }
};
</script>

<style>
.fixed-header {
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
    padding: 0;
}

.fixed-aside {
    position: fixed;
    height: 100vh;
    top: 0;
    left: 0;
    z-index: 500;
}

.scrollable-main {
    margin-top: 60px;
    /* Adjust based on your header's height */
    margin-left: 200px;
    /* Adjust based on your aside's width */
    overflow-y: auto;
    height: calc(100vh - 60px);
    /* Adjust height to take up the remaining vertical space */
}

</style>
