const express=require('express');//web 服务器
const bodyParser=require('body-parser');   //post
const user=require('./routes/user.js');
const tas=require('./routes/taster.js');
 // 引入路由器
var server=express();
server.listen(8080,()=>{
    console.log('ok');
});

//托管静态 public
server.use(express.static('public'));


//配置body-parser 中间件
server.use(bodyParser.urlencoded({
    extended:false
}));


//挂载demo
server.use('/register',user);

//挂载taster 品味杭州
server.use('/taster',tas);

