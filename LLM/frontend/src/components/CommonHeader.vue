<template>
    <div class="header-container">
        <div class="l-content">
            <el-button @click="toggleCollapse" icon="el-icon-menu" size="mini"></el-button>
            <span class="text">Main</span>
        </div>
        <div class="r-content">
            <el-dropdown>
                <span class="el-dropdown-link">
                    <img class="user" src="../assets/logo.png" alt="头像"
                        style="width: 40px; height: 40px; border-radius: 50%;">
                </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item>个人中心</el-dropdown-item>
                    <el-dropdown-item divided>退出登录</el-dropdown-item>
                </el-dropdown-menu>
            </el-dropdown>
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            message: 'Hello Vue!'
        };
    },
    methods: {
        toggleCollapse() {
            this.$store.commit('toggleCollapse');
        }
    }
}
</script>

<style>
.header-container {
    padding: 0 20px;
    background-color: #333;
    height: 60px;
    display: flex;
    justify-content: space-between;
    align-items: center;

    .text {
        color: #fff;
        font-size: 14px;
        margin-left: 10px;
    }

    .r-content {
        .user {
            width: 40px;
            height: 40px;
            border-radius: 50%;
        }
    }
}
</style>