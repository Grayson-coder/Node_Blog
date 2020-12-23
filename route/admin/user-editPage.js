const { User } = require('../../model/dataBase') // 引入数据库模块

module.exports = async (req, res) => {
    req.app.locals.currentLink = 'user'   // 表示当前页面属于用户管理页面

    // 获取GET请求参数
    let  { err, id } = req.query
    if (id) {  // 如果传递了id参数 则为修改操作

        let user = await User.findOne({_id: id}) // 获取通过_id查询到的文档数据

        res.render('admin/user-edit.art', {
            errMsg: err,
            user,  // 当前修改用户的所有信息
            opearte: '修改用户',
            link: 'http://localhost:3000/admin/modifyUser?id='+id  // 提交表单时要跳转到的路由
        })
 
    } else {
        // 添加操作
        res.render('admin/user-edit.art', {
            errMsg: err,
            opearte: '添加用户',
            link: 'http://localhost:3000/admin/addUser' // 提交表单时要跳转到的路由
        })
    }
}









