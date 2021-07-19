import { createRouter, createWebHistory } from 'vue-router'
// import Home from '../views/Home.vue'
import TemplateSide from '../views/TemplateSide.vue'
import QuestionTable from '../views/QuestionTable.vue'
import AnswerTable from '../views/AnswerTable.vue'
import ClassTable from '../views/ClassTable.vue'
import EvalTable from '../views/EvalTable.vue'
import Login from '../views/Login.vue'
import GetDatabaseData from '../views/GetDatabaseData.vue'
import GetMockserverData from '../views/GetMockserverData.vue'
import List from '../views/List.vue'

const routes = [
    {
        path: '/list',
        name: 'List',
        component: List
    },
    {
        path: '/sidetest',
        name: 'TemplateSide',
        component: TemplateSide
    },
    {
        path: '/dbtest',
        name: 'GetDatabaseData',
        component: GetDatabaseData
    },
    {
        path: '/mocktest',
        name: 'GetMockserverData',
        component: GetMockserverData
    },
    {
        path: '/dbtest',
        name: 'GetDatabaseData',
        component: GetDatabaseData
    },
    {
        path: '/mocktest',
        name: 'GetMockserverData',
        component: GetMockserverData
    },

    {
        path: '/questiontable',
        name: 'QuestionTable',
        component: QuestionTable
    },
    {
        path: '/answertable',
        name: 'AnswerTable',
        component: AnswerTable
    },
    // {
    //     path: '/',
    //     name: 'Home',
    //     component: Home
    // },
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
        path: '/',
        name: 'Login',
        component: Login
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
