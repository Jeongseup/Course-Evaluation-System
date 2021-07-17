import { createRouter, createWebHistory } from 'vue-router'
import Home from '../views/Home.vue'
import TemplateSide from '../views/TemplateSide.vue'
import GetDatabaseData from '../views/GetDatabaseData.vue'
import GetMockserverData from '../views/GetMockserverData.vue'

const routes = [
    {
        path: '/sidetest',
        name: 'TemplateSide',
        component: TemplateSide
    },
    {
        path: '/dbest',
        name: 'GetDatabaseData',
        component: GetDatabaseData
    },
    {
        path: '/mocktest',
        name: 'GetMockserverData',
        component: GetMockserverData
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
