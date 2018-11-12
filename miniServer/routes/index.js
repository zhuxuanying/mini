//用户路由器
const express=require('express');
//导入连接数据库的模块
const pool=require('../pool.js');
//使用路由器 返回对象------------------------1***
var router=express.Router();
//index页面
// 请求  hot—move
router.get("/index",(req,res)=>{
    var pno=req.query.pno; //当前页码
    var pageSize=req.query.pageSize;//页大小
    var process=0;
    var obj={pno:pno,pageSize:pageSize}
    var sql="select count(pid) as c from mini_product";
    pool.query(sql,(err,result)=>{
        if(err) throw err;
        var pageCount=Math.ceil(result[0].c/pageSize);
        process+=50;
        obj.pageCount=pageCount;
        if(process==100){
            res.send(obj);
        }
    })
    var sql="select * from mini_product limit ?,?";
    var offset=parseInt((pno-1)*pageSize);
    var pageSize=parseInt(pageSize);
    pool.query(sql,[offset,pageSize],(err,result)=>{
        if(err) throw err;
        process+=50;
        obj.data=result;
        if(process==100){
            res.send(obj);
        }
    })
})

router.get("/detail",(req,res)=>{
    var pid=req.query.pid;
    var sql="select * from mini_product where pid=?"
    pool.query(sql,[pid],(err,result)=>{
        if(err) throw err;
        res.send(result)
    })
})
//http://localhost:7000/minix?pno=2&pageSize=5
//导出路由器
module.exports=router;