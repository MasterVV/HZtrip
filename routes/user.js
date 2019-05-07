const express=require('express');


//引入数据库
const pool=require('../pool.js');

//使用express 创建路由器对象
var router=express.Router();

//1-检测路由器是否连接成功
router.get('/test',(req,res)=>{
    res.send("router ok!");
});

//2-登录验证
router.post('/login',(req,res)=>{
    //获取用户名  密码
    var $uname=req.body.username;
    console.log($uname);
    var $upwd=req.body.userpwd;
    console.log($upwd);
    //验证用户名，密码不能为空
       if(!$uname){
        res.send("用户名不存在！");
        return;
        }
       if(!$upwd){
            res.send("密码不存在");
            return;
        }
    //查询数据库
    var sql="select *from hz_user where uname=? and upwd=?";
    pool.query(sql,[$uname,$upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send("success");
        }
        else{
            res.send("fail");
        }
    }); 
});


//3-用户注册
router.post("/reg",(req,res)=>{
    var $uname=req.body.uname;
    var $upwd=req.body.upwd;
    var $email=req.body.email;
    var $phone=req.body.phone;
    var $gender=req.body.gender;
    console.log(req.body);


    pool.query("insert into hz_user set uname=?,upwd=?,email=?,phone=?,gender=?",[$uname,$upwd,$email,$phone,$gender],(err,result)=>{
        if(err) throw err;
        if(result.affectedRows>0){
            res.send("success");
        }else{
            res.send('fail');
        }
    });

});


//4-用户留言 
router.get('/comment',(req,res)=>{
    var $tname=req.query.tname;
    var $tduce=req.query.tduce;
    var $time=req.query.time;   
    // var obj={data:[],com:[]};
    

    if($tduce==""){
        pool.query("select tname,tduce,time from hz_comment order by uid desc",(err,result)=>{
            if(err) throw err;
            //obj.com=result;
            res.send(result);

    }
    )}else{
    pool.query("insert into hz_comment set tname=?,tduce=?,time=?",[$tname,$tduce,$time],(err,result)=>{
        if(err) throw err;
        //obj.data=result;
        //按照降序提取数据
            pool.query("select tname,tduce,time from hz_comment order by uid desc",(err,result)=>{
                if(err) throw err;
                //obj.com=result;
                res.send(result);
    });
    })
    }
});


module.exports=router;
