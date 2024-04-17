<template>
    <el-row>
        <el-col :span="8">
            <el-card class="box-card">
                <div class="user">
                    <img src="../assets/logo.png" alt="">
                    <div class="user-info">
                        <p class="name">Admin</p>
                        <p class="title">Manager</p>
                    </div>
                </div>
            </el-card>
        </el-col>
        <el-col :span="16">
            <div class="grid-content bg-purple-light"></div>
        </el-col>
    </el-row>
</template>

<script>
export default {
    data() {
        return {
            message: 'Hello Vue!'
        }
    },
};
</script>

<style lang="less" scoped>
.user {
    display: flex;
    align-items: center;
    img {
        margin-right: 40px;
        width: 150px;
        height: 150px;
        border-radius: 50%;
    }
    .user-info {
        margin-left: 20px;
        .name {
            font-size: 32px;
            margin-bottom: 10px;
        }
        .title {
            font-size: 16px;
            color: #999;
        }
    }
}
</style>