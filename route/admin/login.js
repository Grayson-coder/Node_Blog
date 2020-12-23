const bcrypt = require('bcryptjs'); // 导入bcrypt模块

const { User } = require('../../model/dataBase') // 引入数据库模块

const login = async (req, res) => {
    // 接收请求参数 
    let  { email, password } = req.body
    if (email === '' || password === '') {  // 服务器二次验证
        res.render('admin/common/err.art', {msg: '邮箱地址和密码不能为空'})
    }

    let user = await User.findOne({email})  // 去数据库中查找是否有该邮箱
    if (user) { // 查询到了邮箱
        // 用户输入的密码和数据库中的密码进行比对
        let isEqual = await bcrypt.compare(password, user.password);

        if (isEqual) {    // 登录成功
            req.session.userName = user.userName  // 将用户名存储在请求对象中
            req.session.role = user.role  // 将登录用户的身份存储在session中
            req.app.locals.userInfo = user  // 如果登录成功，将登录的用户信息存储到模板文件的全局变量下

            // 对登录的用户身份进行判断
            if (user.role === 'admin') {  // 管理员身份就进入后台页面，普通用户身份进入前台页面
                return res.redirect('http://localhost:3000/admin/user')  // 用户管理页面
            } else {
                return res.redirect('http://localhost:3000/home/')  // 博客前台页面
            }
            
            
        } else {
            res.render('admin/common/err.art', {msg: '邮箱地址或者密码错误'})
        }
    } else {  // 没有查询到邮箱
        res.render('admin/common/err.art', {msg: '邮箱地址不存在，请重新输入'})
    }
}
module.exports = login