const { Article } = require('../../model/dataBase') // 引入数据库模块
const formidable = require('formidable');  // 引入解析带有文件上传的表单的模块
let path = require('path')
let dateFormat = require('dateformat');   // 引入处理时间的模块

 
module.exports = (req, res) => {
    // 1. 创建表单解析对象
    const form = new formidable.IncomingForm();
    // 2. 配置上传文件的存放位置(绝对路径)
    form.uploadDir = path.join(__dirname, "../../public/uploads")
    // 3. 是否保留表单上传文件的扩展名
    form.keepExtensions = true;

    // 4. 对表单进行解析
    form.parse(req, async (err, fields, files) => {
        let now = dateFormat(new Date, 'yyyy-mm-dd ') // 获取当前时间 格式为'年-月份-日期'
        let cover = files.cover.path.split('public')[1]  // 获取public之后的路径

        let { title, content, id, publicDate } = fields  // 获取表单的普通数据
        publicDate === '' ? publicDate = now : publicDate  // 初始化提交的时间

        // 将表单数据更新到数据库中
        await Article.updateOne({ _id: id }, {
            title,
            content,
            cover,
            publicDate
        })
        res.redirect('http://localhost:3000/admin/article')
    });
}