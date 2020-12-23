const Joi = require('joi')  // 引入joi模块

// 定义对象的验证规则
const schema = {
    username: Joi.string().alphanum().min(3).max(30).required().error(new Error('用户名不正确')),
    email: Joi.string().email().error(new Error('邮箱输入错误'))

};

// 实行验证
Joi.validate({username: '123456', email: '222@qq.com'}, schema)
    .then(res => console.log(res))
    .catch(err => console.log(err.message))


