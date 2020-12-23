function loginGuard(req, res, next) {
    // console.log(req.url);  
    
    if (req.url != '/login' || !req.session.userName) { // 判断用户的登录状态
        return res.redirect('/admin/login')
        
    } else if (req.url === '/exit') {  // 如果是退出路由，则交给下一个中间件处理
        return next()

    } else if (req.url != '/login' && req.session.role === 'normal') { 
        // 如果当前登录的用户是普通用户，拦截请求到博客前台页面
        return res.redirect('http://localhost:3000/home/')
        
    } else {
       return next()
    }
}

module.exports = {
    loginGuard
}


