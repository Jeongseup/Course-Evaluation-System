import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import ClassTable from '../views/ClassTable.vue'
import Test from '../views/Test.vue'
<<<<<<< Updated upstream
import EvalTable from '../views/EvalTable.vue'
=======
import te from '../views/te.vue'
import Side from '../views/Side.vue'
>>>>>>> Stashed changes

const routes = [
    {
        path: '/side',
        name: 'Side',
        component: Side
    },
    {
        path: '/te',
        name: 'te',
        component: te
    },
    {
        path: '/',
        name: 'Home',
        component: Home
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
