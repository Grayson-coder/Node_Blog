const { Article } = require('../../model/dataBase') // 引入数据库模块

module.exports =  async (req, res) => {
    req.app.locals.currentLink = 'article'   // 表示当前页面属于文章管理页面

    let  { id } = req.query // 获取文章id字段

    if (id) {  // 如果传递了id参数则为修改文章操作

        let article = await Article.findOne({_id: id}).populate('author')  // 获取文章集合数据

        // res.send(article)
 
        res.render('admin/article-edit.art', {
            opearte: '修改文章',
            article,  // 当前修改文章的所有集合信息
            link: 'modifyArticle'
        })

    } else {  // 新增文章操作
        
        res.render('admin/article-edit.art', {
            opearte: '新增文章',
            link: 'addArticle'
        })
    }
    
} 




