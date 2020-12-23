const bcrypt = require('bcryptjs'); // 导入bcrypt模块

async function encPwd(pwd) {
    // 生成随机字符串
    let salt = await bcrypt.genSalt(10);
    console.log(salt);
    
    // 使用随机字符串对密码进行加密
    let pass = await bcrypt.hash(pwd, salt);
    return pass

    // let isEqual = await bcrypt.compare(pwd, pass);
    // console.log(isEqual);
    
}

let pass = encPwd('987654321')
pass.then(res => console.log(res))
