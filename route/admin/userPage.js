const { User } = require('../../model/dataBase') // 引入数据库模块

module.exports = async (req, res) => {
    req.app.locals.currentLink = 'user'   // 表示当前页面属于用户管理页面
    
    let page = Number(req.query.page || 1)   // 接收浏览器传递过来的当前页参数

    let pagesize = 10  // 设置每一页显示的数据条数
    let count = await User.countDocuments({}) // 获取User集合中数据的总数
    
    let totalPage = Math.ceil(count / pagesize)  //  设置页面展示的总页数

    // 数据开始查询位置=（当前页-1）* 每页显示的数据条数
    let start = (page - 1) * pagesize

    let users = await User.find().limit(pagesize).skip(start)  // 查询数据库中所有的数据

    res.render('admin/user.art', {
        users,  // 当前页的所有数据
        totalPage,  // 总页数
        page,  // 当前页标识
    })
}




