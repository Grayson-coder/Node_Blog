module.exports = (req, res) => {
    
    req.session.destroy(() => {
        
        res.clearCookie('userID')  // 删除的cookie

        req.app.locals.userInfo = null // 将模板引擎的全局变量变为空
        
        res.redirect('/admin/login')  // 重定向到用户登录页面

        
    })
}