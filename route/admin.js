const express = require('express')
const bcrypt = require('bcryptjs'); // 导入bcrypt模块

const { User } = require('../model/dataBase') // 引入数据库模块

const admin = express.Router()

// 渲染登录页面
admin.get('/login', require('./admin/loginPage'))

// 实现登录功能
admin.post('/login', require('./admin/login'))

// 渲染用户信息页面
admin.get('/user', require('./admin/userPage'))


// 渲染编辑用户页面
admin.get('/user-edit', require('./admin/user-editPage'))

// 实现新增用户的功能
admin.post('/addUser', require('./admin/addUser'))

// 实现修改用户的功能路由
admin.post('/modifyUser', require('./admin/modifyUser'))

// 实现用户删除的功能路由
admin.get('/delete', require('./admin/delete'))


// 文章列表页面路由
admin.get('/article', require('./admin/article'))

// 文章编辑的页面路由
admin.get('/article-edit', require('./admin/article-edit'))

// 实现文章添加的功能路由
admin.post('/addArticle', require('./admin/addArticle'))

// 实现文章修改的功能路由
admin.post('/modifyArticle', require('./admin/modifyArticle'))

// 实现文章删除的功能路由
admin.post('/deleteArticle', require('./admin/deleteArticle'))

// 实现退出功能
admin.get('/exit', require('./admin/exit'))

module.exports = admin