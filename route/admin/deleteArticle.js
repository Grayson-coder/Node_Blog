const { Article } = require('../../model/dataBase') // 引入数据库模块

module.exports = async (req, res) => {
    let { articleID } = req.body
    
    await Article.findOneAndDelete({_id: articleID})  // 根据文章id从数据库中删除数据
    res.redirect('http://localhost:3000/admin/article')  //  重定向到文章管理界面
}





