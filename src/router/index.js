import { createRouter, createWebHistory } from 'vue-router'
// import Home from '../views/Home/'

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: '/',
      name: 'home',
      component: () => import('../views/Home/index.vue'),
    },
  ],
})

export default router
