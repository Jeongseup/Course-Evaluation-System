import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import Ex from '../views/Ex.vue'

const routes = [
    {
        path: '/ex',
        name: 'Ex',
        component: Ex
    },
    {
        path: '/',
        name: 'Home',
        component: Home
    },
    // {
    //     path: '/classtable',
    //     name: 'ClassTable',
    //     component: ClassTable
    // },
    // {
    //     path: '/test',
    //     name: 'Test',
    //     component: Test
    // },
    // {
    //     path: '/evaltable',
    //     name: 'EvalTable',
    //     component: EvalTable
    // },
    {
        path: '/questiontable',
        name: 'QuestionTable',
        component: QuestionTable
    },
    {
        path: '/boot',
        name: 'Boot',
        component: Boot
    },
    {
        path: '/classtable',
        name: 'ClassTable',
        component: ClassTable
    },
    {
        path: '/test',
        name: 'Test',
        component: Test
    },
    {
        path: '/evaltable',
        name: 'EvalTable',
        component: EvalTable
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
