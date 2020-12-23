const { User } = require('../../model/dataBase') // 引入数据库模块


module.exports = async (req, res) => {
    let id = req.query.id  // 获取地址栏参数id
    await User.findOneAndDelete({_id: id})  // 根据id从数据库中删除数据
    res.redirect('http://localhost:3000/admin/user')  //  重定向到用户界面
}