const { User } = require('../../model/dataBase') // 引入数据库模块

const bcrypt = require('bcryptjs'); // 导入bcrypt模块

module.exports = async (req, res, next) => {
    let data = req.body  // 获取表单提交的参数
    let id = req.query.id  // 获取地址栏的id参数

    let user = await User.findOne({_id: id})   // 根据传递的id去数据库中查找相应用户

    // 用户输入的密码和数据库中的密码进行比对
    let isEqual = await bcrypt.compare(data.password, user.password);

    if (isEqual) { // 密码比对成功
        // 将用户输入的数据更新到数据库中
        let { userName, email, role, state } = data
        await User.updateOne({_id: id}, {userName, email, role, state})
        res.redirect('http://localhost:3000/admin/user')  // 重定向到用户页面

    } else {  // 密码比对失败
        let err = '密码输入错误，请重新输入'
        // 错误信息以地址栏参数传递，重定向到修改用户界面
        res.redirect(`http://localhost:3000/admin/user-edit?id=${id}&err=${err}`)
    }
}




