const express = require('express')

const home = express.Router()  // 创建路由对象

// 博客前台首页的展示页面
home.get('/', require('./home/index'))

// 博客前台文章详情展示页面
home.get('/article', require('./home/article'))

// 添加评论的功能路由
home.post('/comment', require('./home/comment'))

// 导出路由成员
module.exports = home






