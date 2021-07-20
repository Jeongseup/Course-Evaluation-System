import { createRouter, createWebHistory } from 'vue-router'

import Login from '../views/Login.vue'
import Home from '../views/Home.vue'
import ClassTable from '../views/ClassTable.vue'
import EvalTable from '../views/EvalTable.vue'
import QuestionTable from '../views/QuestionTable.vue'

const routes = [
    {
        path: '/login',
        name: 'Login',
        component: Login
    },
    {
        path: '/list',
        name: 'Home',
        component: Home
    },
    {
        path: '/classtable',
        name: 'ClassTable',
        component: ClassTable
    },
    {
        path: '/evaltable',
        name: 'EvalTable',
        component: EvalTable
    },
    {
        path: '/questiontable',
        name: 'QuestionTable',
        component: QuestionTable
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
