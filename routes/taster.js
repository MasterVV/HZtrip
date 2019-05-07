const express=require("express");

//引入数据库
const pool=require("../pool.js");

//使用express 创建路由器
var router=express.Router();


//检测路由连接成功
router.get('/test',(req,res)=>{
    res.send("连接成功！");
});

//提取数据库 hz_taste 中图片文字
router.get('/intr',(req,res)=>{
    var sql="select *from HZ_index";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send("fail");
        }
    });
});

//提取 品味杭州页面 数据 
router.get('/taster',(req,res)=>{
    var sql="select *from HZ_taster";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send(result);
        }else{
            res.send("fail");
        }
    });
});
module.exports=router;