import Vue from 'vue'
import VueRouter from 'vue-router'

Vue.use(VueRouter)

// 解决导航栏或者底部导航tabBar中的vue-router在3.0版本以上频繁点击菜单报错的问题。
const originalPush = VueRouter.prototype.push
VueRouter.prototype.push = function push (location) {
  return originalPush.call(this, location).catch(err => err)
}

const routes = [
  {
    path: '/',
    name: 'Manager',
    component: () => import('../views/Manager.vue'),
    redirect: '/home',  // 重定向到主页
    children: [
      { path: '403', name: 'NoAuth', meta: { name: '无权限' }, component: () => import('../views/manager/403') },
      { path: 'home', name: 'Home', meta: { name: '系统首页' }, component: () => import('../views/manager/Home') },
      { path: 'admin', name: 'Admin', meta: { name: '管理员信息' }, component: () => import('../views/manager/Admin') },
      { path: 'adminPerson', name: 'AdminPerson', meta: { name: '个人信息' }, component: () => import('../views/manager/AdminPerson') },
      { path: 'password', name: 'Password', meta: { name: '修改密码' }, component: () => import('../views/manager/Password') },
      { path: 'notice', name: 'Notice', meta: { name: '公告信息' }, component: () => import('../views/manager/Notice') },
      { path: 'user', name: 'User', meta: { name: '用户信息' }, component: () => import('../views/manager/User') },
      { path: 'category', name: 'Category', meta: { name: '分类信息' }, component: () => import('../views/manager/Category') },
      { path: 'blog', name: 'Blog', meta: { name: '帖子信息' }, component: () => import('../views/manager/Blog') },
      { path: 'activity', name: 'Activity', meta: { name: '竞赛信息' }, component: () => import('../views/manager/Activity') },
      { path: 'comment', name: 'Comment', meta: { name: '评论管理' }, component: () => import('../views/manager/Comment') },
      { path: 'activitySign', name: 'ActivitySign', meta: { name: '竞赛报名' }, component: () => import('../views/manager/ActivitySign') },
      { path: 'certification', name: 'Certification', meta: { name: '身份认证' }, component: () => import('../views/manager/Certification.vue') },
      { path: 'circulars', name: 'Circulars', meta: { name: '系统通知' }, component: () => import('../views/manager/Circulars.vue') },

    ]
  },
  {
    path: '/front',
    name: 'Front',
    component: () => import('../views/Front.vue'),
    children: [
      { path: 'home', name: 'FrontHome', meta: { name: '系统首页' }, component: () => import('../views/front/Home.vue') },
      { path: 'person', name: 'Person', meta: { name: '个人信息' }, component: () => import('../views/front/Person') },
      { path: 'activity', name: 'Activity', meta: { name: '竞赛中心' }, component: () => import('../views/front/Activity') },
      { path: 'activityDetail', name: 'ActivityDetail', meta: { name: '竞赛详情' }, component: () => import('../views/front/ActivityDetail') },
      { path: 'blogDetail', name: 'BlogDetail', meta: { name: '帖子详情' }, component: () => import('../views/front/BlogDetail') },
      { path: 'search', name: 'Search', meta: { name: '搜索' }, component: () => import('../views/front/Search') },
      { path: 'newBlog', name: 'NewBlog', meta: { name: '发布帖子' }, component: () => import('../views/front/NewBlog') },
      // { path: 'signIn', name: 'SignIn', meta: { name: '签到' }, component: () => import('../views/front/SignIn.vue') },
      { path: 'certification', name: 'Certification', meta: { name: '身份认证' }, component: () => import('../views/front/Certification.vue') },
      { path: 'circulars', name: 'Circulars', meta: { name: '系统通知' }, component: () => import('../views/front/Circulars.vue') },
      { path: 'homePage', name: 'HomePage', meta: { name: '我的主页' }, component: () => import('../views/front/HomePage.vue') },
      { path: 'editHomePage', name: 'EditHomePage', meta: { name: '编辑主页' }, component: () => import('../views/front/EditHomePage.vue') },
      { path: 'exitMemberWelfare', name: 'ExitMemberWelfare', meta: { name: '编辑会员福利' }, component: () => import('../views/front/ExitMemberWelfare.vue') },
    ]
  },
  { path: '/login', name: 'Login', meta: { name: '登录' }, component: () => import('../views/Login.vue') },
  { path: '/register', name: 'Register', meta: { name: '注册' }, component: () => import('../views/Register.vue') },
  { path: '*', name: 'NotFound', meta: { name: '无法访问' }, component: () => import('../views/404.vue') },
]

const router = new VueRouter({
  mode: 'history',
  base: process.env.BASE_URL,
  routes
})

// 注：不需要前台的项目，可以注释掉该路由守卫
// 路由守卫
// router.beforeEach((to ,from, next) => {
//   let user = JSON.parse(localStorage.getItem("xm-user") || '{}');
//   if (to.path === '/') {
//     if (user.role) {
//       if (user.role === 'USER') {
//         next('/front/home')
//       } else {
//         next('/home')
//       }
//     } else {
//       next('/login')
//     }
//   } else {
//     next()
//   }
// })

export default router
