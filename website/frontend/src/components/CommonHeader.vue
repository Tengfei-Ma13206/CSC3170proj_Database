<template>
    <div class="header-container">
        <div class="l-content">
            <el-button @click="toggleCollapse" icon="el-icon-menu" size="mini"></el-button>
            <span class="text">Supermarket Management</span>
        </div>
        <div class="r-content">
            <el-dropdown>
                <span class="el-dropdown-link">
                    <img class="user" src="../assets/logo.png" alt="头像"
                        style="width: 40px; height: 40px; border-radius: 50%;">
                </span>
                <el-dropdown-menu slot="dropdown">
                    <el-dropdown-item @click.native="goPath('/personal')" >Personal Center</el-dropdown-item>
                    <el-dropdown-item @click.native="goPath('/login')" divided>Logout</el-dropdown-item>
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
        },
        goPath(path) {
            if (this.$route.path !== path) 
                this.$router.push(path);
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
        font-size: 20px;
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