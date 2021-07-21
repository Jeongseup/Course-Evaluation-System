import { createRouter, createWebHistory } from 'vue-router'

import TemplateSide from '../views/TemplateSide.vue'
import QuestionTable from '../views/QuestionTable.vue'
import AnswerTable from '../views/AnswerTable.vue'
import CourseTable from '../views/CourseTable.vue'
import EvalTable from '../views/EvalTable.vue'
import Login from '../views/Login.vue'
import List from '../views/List.vue'
import select from '../views/select.vue'

const routes = [
    {
        path: '/select',
        name: 'select',
        component: select
    },
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
        path: '/questiontable',
        name: 'QuestionTable',
        component: QuestionTable
    },
    {
        path: '/answertable',
        name: 'AnswerTable',
        component: AnswerTable
    },
    {
        path: '/coursetable',
        name: 'CourseTable',
        component: CourseTable
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
