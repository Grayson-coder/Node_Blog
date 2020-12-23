const { Article } = require('../../model/dataBase')
let  dateFormat  = require ('dateformat') ;   // 引入处理时间的模块
const pagination = require('mongoose-sex-page'); // 引入第三方模块，用于处理数据分页


module.exports = async (req, res) => {
    req.app.locals.dateFormat = dateFormat  // 向模板文件中添加一个处理时间格式的函数

    let { page } = req.query || 1  // 获取浏览器传递过来的当前页数标识

    // 获取数据库中的文章集合数据
    let article = await pagination(Article).find().page(page).size(4).populate('author').exec()
    // console.log(article);
    

    res.render('home/index.art', {
        article
    })
}


