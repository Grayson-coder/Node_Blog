const mongoose = require('mongoose')
const bcrypt = require('bcryptjs'); // 导入bcrypt模块
const Joi = require('joi')  // 引入jio模块


// 连接数据库
mongoose.connect(`mongodb://localhost/test`, { useNewUrlParser: true, useUnifiedTopology: true, useCreateIndex: true })
    .then(() => console.log('数据库连接成功'))
    .catch(err => console.log('数据库连接失败', err))



// 创建用户集合规则
const userSchema = new mongoose.Schema({
    userName: {
        type: String,
        require: true
    },
    email: {
        type: String,
        require: true,
        unique: true
    },
    password: String,
    role: String, // admin: 管理员身份  normal: 普通用户
    state: {  // 0：启动状态  1：禁用状态
        type: Number,
        default: 0
    }
})

// 使用用户集合规则创建用户集合对象
const User = mongoose.model('user', userSchema)


// 创建文章集合规则
const articleSchema = new mongoose.Schema({
    title: String,   // 文章标题
    author: { type: mongoose.Schema.Types.ObjectId, ref: 'user' }, // 作者字段需要关联user集合中的_id字段
    publicDate: {  // 出版日期
        type: Date,
        default: Date.now
    },
    cover: {  // 文章封面
        type: String,
        default: null
    },
    content: String  // 文章内容
})

// 使用文章集合规则创建文章集合对象
let Article = mongoose.model('article', articleSchema)

// 创建评论集合
const commentSchema = new mongoose.Schema({
    // 评论的文章id字段  需要关联article集合中的_id字段
    aid: { type: mongoose.Schema.Types.ObjectId, ref: 'article' },
    // 评论人用户id
    uid: { type: mongoose.Schema.Types.ObjectId, ref: 'user' },
    time: Date,  // 评论时间
    content: String   // 评论内容
})

// 使用评论集合规则创建评论集合对象
let Comment = mongoose.model('comment', commentSchema)


// 初始化用户函数
// async function createUser() {
//     let salt = await bcrypt.genSalt(10);
//     let pass = await bcrypt.hash('123456', salt);

//     const user = await User.create({
//         userName: 'admin',
//         email: '33158742@qq.com',
//         password: pass,
//         role: 'admin'
//     })
// }

// createUser()


function validateUser(user) {
    // 定义验证规则
    let schema = {
        userName: Joi.string().required().error(new Error('用户名格式不正确')),
        email: Joi.string().email().required().error(new Error('邮箱格式错误')),
        password: Joi.string().regex(/^[a-zA-Z0-9]{3,30}$/).error(new Error('密码格式错误')),
        role: Joi.string().valid('normal', 'admin').error(new Error('角色值不合法')),
        state: Joi.number().valid(0, 1).error(new Error('状态值不合法'))
    }
    // 实行验证
    return Joi.validate(user, schema)
}



module.exports = {
    Article,
    User,
    validateUser,
    Comment
}
