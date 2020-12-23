const { Article } = require('../../model/dataBase') // 引入数据库模块
let  dateFormat  = require ('dateformat') ;   // 引入处理时间的模块
const pagination = require('mongoose-sex-page'); // 引入第三方模块，用于处理数据分页
 
module.exports = async (req, res) => {
    req.app.locals.dateFormat = dateFormat  // 向模板文件中添加一个处理时间格式的函数
    req.app.locals.currentLink = 'article'   // 表示当前页面属于文章管理页面
    let { page } = req.query  // 获取当前页数据

    // page：指定当前页
    // size：指定每页显示的数据条数
    // display：指定浏览器要显示的页码数量
    
    // 查询数据库中的所有文章文档数据
    let article = await pagination(Article).find().page(page).size(8).display(3).populate('author').exec()  

    res.render('admin/article.art', {
        article
    })
}





