const express = require('express')  // 引入express框架

const bodyParser = require('body-parser');  // 引入body-parser模块
const session = require('express-session');  // 引入session模块
const MongoStore = require('connect-mongo')(session);  // session持久化模块

const path = require('path') // 引入路径模块

const admin = require('./route/admin')  // 引入博客管理路由
const home = require('./route/home')  // 引入博客首页路由
const { User } = require('./model/dataBase')  // 引入数据库模块
const { loginGuard } = require('./middleware/loginGuard') // 引入登录守卫模块


const app = express()  // 创建服务器对象


app.use(express.static(path.join(__dirname, 'public')));  // 开放静态资源访问
app.engine('art', require('express-art-template'));  // 配置模板引擎
app.set('views', path.join(__dirname, 'views'));  // 设置模板文件存放目录
app.use(bodyParser.urlencoded({ extended: false }));  // 配置body-parser模块

app.use(session({  // 配置session
    name: 'userID',
    secret: 'atguigu',
    store: new MongoStore({ url: 'mongodb://localhost/cookies_container' }),
    cookie: { maxAge: 1000 * 60 * 60 },
    resave: true,
    saveUninitialized: true,
}));

// 拦截请求，判断用户登录状态
app.use('/admin', loginGuard)


// 为路由对象设置一级路由
app.use('/home', home)
app.use('/admin', admin)


// 设置错误处理中间件
app.use((err, req, res, next) => {
    console.log('错误处理中间件');
    // JSON.parse()  将字符串数据类型转换为对象数据类型
    if (err) {
        let result = JSON.parse(err)
        res.redirect(`${result.path}?err=${result.errMsg}`)
    }
})



// 监听端口
app.listen(3000, () => console.log('服务器启动成功，通过localhost:3000/login访问用户登录'))



