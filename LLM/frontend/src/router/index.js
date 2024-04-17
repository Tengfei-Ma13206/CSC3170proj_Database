import Vue from 'vue'
import VueRouter from 'vue-router'
import Main from '../views/Main.vue'
import Home from '../views/Home.vue'
import Employee from '../views/Employee.vue'
import ProductOrganization from '../views/ProductOrganization.vue'
import ProductSupply from '../views/ProductSupply.vue'
import ProductSales from '../views/ProductSales.vue'
import LLM from '../views/LLM.vue'


Vue.use(VueRouter)

const routes = [
    {
        path: '/',
        name: 'Main',
        redirect: '/home',
        component: Main,
        children: [
            {
                path: 'home',
                component: Home
            },
            {
                path: 'employee',
                component: Employee
            },
            {
                path: 'product/organization',
                component: ProductOrganization
            },
            {
                path: 'product/supply',
                component: ProductSupply
            },
            {
                path: 'product/sales',
                component: ProductSales
            },
            {
                path: '/llm',
                name: 'llm',
                component: LLM,
            }
        ]
    },
]

const router = new VueRouter({
    routes
})

export default router

