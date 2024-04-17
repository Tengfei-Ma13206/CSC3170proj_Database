<template>
    <el-menu default-active="1-4-1" class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose"
        :collapse="isCollapse" background-color="#545c64" text-color="#fff" active-text-color="#ffd04b">
        <h3>{{ isCollapse ? "Spmk Mgmt" : "Supermarket Management" }}</h3>
        <el-menu-item @click="clickMenu(item)" v-for="item in noChildren" :key="item.name" :index="item.name">
            <i :class="`el-icon-${item.icon}`"></i>
            <span slot="title">{{ item.title }}</span>
        </el-menu-item>
        <el-submenu v-for="item in hasChildren" :key="item.name" :index="item.name">
            <template slot="title">
                <i :class="`el-icon-${item.icon}`"></i>
                <span slot="title">{{ item.title }}</span>
            </template>
            <el-menu-item-group>
                <el-menu-item @click="clickMenu(subItem)" v-for="subItem in item.children" :key="subItem.name" :index="subItem.name">
                    {{ subItem.title }}
                </el-menu-item>
            </el-menu-item-group>
        </el-submenu>

 
        

    </el-menu>
</template>

<style lang="less">
.el-menu-vertical-demo:not(.el-menu--collapse) {
    width: 200px;
    min-height: 400px;
}

.el-menu {
    height: 100vh;
    border-right: none;

    h3 {
        color: #fff;
        text-align: center;
        margin-top: 12px;
        margin-bottom: 12px;
        font-size: 18px;
        font-weight: 400;
    }

    overflow: hidden;
}
</style>

<script>
export default {
    data() {
        return {
            menuData: [
                {
                    path: '/',
                    name: 'home',
                    title: 'Home',
                    icon: 's-home',
                    url: 'Home/Home',
                },
                {
                    path: '/employee',
                    name: 'employee',
                    title: 'Emplyee',
                    icon: 'user-solid',
                    url: 'Employee/Employee',
                },
                {
                    title: 'Product',
                    name: 'product',
                    icon: 's-goods',
                    children: [
                        {
                            path: '/product/organization',
                            name: 'organization',
                            title: 'Organization',
                            icon: 's-order',
                            url: 'Organization/Organization',
                        },
                        {
                            path: '/product/supply',
                            name: 'supply',
                            title: 'Supply',
                            icon: 's-promotion',
                            url: 'Supply/Supply',
                        },
                        {
                            path: '/product/sales',
                            name: 'sales',
                            title: 'Sales',
                            icon: 's-marketing',
                            url: 'Marketing/Marketing',
                        },
                    ]
                },
                {
                    path: '/llm', // Ensure this is set correctly
                    name: 'llm',
                    title: 'LLM',
                    icon: 's-opportunity',
                    url: 'LLM/LLM',
                }
            ]
        };
    },
    methods: {
        handleOpen(key, keyPath) {
            console.log(key, keyPath);
        },
        handleClose(key, keyPath) {
            console.log(key, keyPath);
        },
        clickMenu(item) {
            if (this.$route.path !== item.path && !(this.$route.path == '/home' && item.path == '/')) 
                this.$router.push(item.path);
        }
    },
    computed: {
        noChildren() {
            return this.menuData.filter(item => !item.children);
        },
        hasChildren() {
            return this.menuData.filter(item => item.children);
        },
        isCollapse() {
            return this.$store.state.tab.isCollapse;
        }
    }
}
</script>