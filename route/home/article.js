const { Article, Comment } = require('../../model/dataBase')
let  dateFormat  = require ('dateformat') ;   // 引入处理时间的模块

module.exports = async (req, res) => {
    req.app.locals.dateFormat = dateFormat  // 向模板文件中添加一个处理时间格式的函数

    let { id } = req.query   // 获取地址栏参数

    // 根据传递的id去获取数据库中对应的文章集合数据（一条文档数据）
    let article = await Article.findOne({_id: id}).populate('author')

    // 根据传递过来的文章id，获取其对应的评论数据
    let comment = await Comment.find({aid: id}).populate('uid')

    // console.log(article);
    // console.log(comment);
    
    res.render('home/article.art', {
        article,
        comment
    })
}




