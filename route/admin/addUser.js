const bcrypt = require('bcryptjs'); // 导入bcrypt模块

const { User, validateUser } = require('../../model/dataBase')  // 引入数据库模块

module.exports = async (req, res, next) => {
    let addUserInfo = req.body  // 获取POST请求参数

    // 验证数据，如果验证失败，带着错误信息重定向到用户添加页面
    try {
        await validateUser(addUserInfo)
    }catch (err) {
        // return res.redirect(`http://localhost:3000/admin/user-edit?err=${err.message}`)

        let obj = {path: 'http://localhost:3000/admin/user-edit', errMsg: err.message}
        return next(JSON.stringify(obj)) // JSON.stringify(): 将对象数据类型转换为字符串数据类型
    }
         

    // 判断新增的邮箱是否已经在数据库中注册过
    let email = await User.findOne({email: addUserInfo.email})

    if (email) {
        let obj = {path: 'http://localhost:3000/admin/user-edit', errMsg: '该邮箱已经被注册过了'}
        return next(JSON.stringify(obj)) 

    } else {  // 用户输入的信息无误，加密存储到数据库中
        let salt = await bcrypt.genSalt(10);
        let password = await bcrypt.hash(req.body.password, salt);
        addUserInfo.password = password  // 将用户输入的密码变为了加密后的密码

        // 将用户新增的数据写入到数据库中,写入成功后重定向的用户管理页面
        User.create(addUserInfo).then(() => res.redirect('/admin/user'))
    }
}