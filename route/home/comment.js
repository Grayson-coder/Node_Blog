const { Comment } = require('../../model/dataBase')

module.exports = async (req, res) => {
    let { uid, aid, content} = req.body // 获取提交评论的数据
    
    await Comment.create({  // 将评论信息存储到评论集合中
        uid,  // 用户id字段
        aid,  // 文章id
        content,  // 评论内容
        time: new Date()  // 评论时间
    })

    // 将页面重新定向到文章详情页面,携带当前页面的id参数跳转
    res.redirect(`http://localhost:3000/home/article?id=${aid}`)
}



