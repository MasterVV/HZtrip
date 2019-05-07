//连接数据库模块
const mysql=require('mysql');
//创建连接池
var pool=mysql.createPool({
    host:'127.0.0.1',
    port:'3306',
    user:'root',
    password:'',
    database:'HZ',
    connectionLimit:20
});

//导出对象
module.exports=pool;