import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Side from '../views/Side.vue'
import QuestionTable from '../views/QuestionTable.vue'

const routes = [
    {
        path: '/side',
        name: 'Side',
        component: Side
    },
    {
        path: '/qt',
        name: 'QuestionTable',
        component: QuestionTable
    },
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    {
        path: '/about',
        name: 'About',
        // route level code-splitting
        // this generates a separate chunk (about.[hash].js) for this route
        // which is lazy-loaded when the route is visited.
        component: () =>
            import(/* webpackChunkName: "about" */ '../views/About.vue')
    }
]

const router = createRouter({
    history: createWebHistory(process.env.BASE_URL),
    routes
})

export default router
