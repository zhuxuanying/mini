//用户路由器
const express=require('express');
//导入连接数据库的模块
const pool=require('../pool.js');
//使用路由器 返回对象------------------------1***
var router=express.Router();
router.get("/info",(req,res)=>{
    var arr=[];
    var pid=[];
    (async function(){
        var sql="select pid,num from mini_shopCart";
        await new Promise(function(open){
            pool.query(sql,[],(err,result)=>{
                if(err) console.log(err);
                for(var i=0;i<result.length;i++){
                    var obj={};
                    obj["num"]=result[i].num;
                    obj["pid"]=result[i].pid;
                   arr.push(obj)
                 pid.push(result[i].pid)
                 open()
                 //console.log(arr,pid)
                }
                
            })
        })
        await new Promise(function(open){
            //console.log(pid)
            for(let i=0;i<pid.length;i++){
                var obj1={}
                var id=pid[i]
                var sql="select * from mini_product where pid=?";
                pool.query(sql,[id],(err,result)=>{
                    
                    if(err) throw err;
                        arr[i]["pic"]=result[0].pic;
                        arr[i]["price"]=result[0].newPrice;
                        arr[i]["xinghao"]=result[0].xinghao;
                        arr[i]["intro"]=result[0].intro;
                        arr[i]["isSelect"]="false"
                       
                        //arr.push(obj1) 
                       if(i==pid.length-1){
                        res.send(arr)
                       }
                        //console.log(arr)
                    })  
            }
           
            //console.log(arr)
        })
        
    })()
})
router.get("/num",(req,res)=>{
    var sql="select num from mini_shopCart";
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        var num=0;
        for(var i=0;i<result.length;i++){
            if(result[i].num!==null){
                num+=parseInt(result[i].num)
                
            }
           // console.log(num)
        }
        res.send({totalNum:num})
    })
})
router.get("/insert",(req,res)=>{
    var pid=req.query.pid;
    var num=req.query.num;
    //var pid=req.body.pid;
    //var num=req.body.num;
    //console.log(pid,num)
    if(pid!==null && num!==null){
        var sql="select num from mini_shopCart where pid=?";
        pool.query(sql,[pid],(err,result)=>{
            if(result.length>0){
                //console.log(1)
                var sql="UPDATE mini_shopCart SET num=? WHERE pid=?";
                var newNum=parseInt(num)+parseInt(result[0].num)
                pool.query(sql,[newNum,pid],(err,result)=>{
                    //console.log(result)
                    if(err){
                        res.send({msg:"商品数量加1失败",code:0})
                    }
                    res.send({msg:"商品数量加1",code:"ok"})
                })
            }else{
                var sql="INSERT INTO mini_shopCart VALUES(NULL,?,?)";
               // console.log(result)
                pool.query(sql,[pid,num],(err,result)=>{
                    if(err){
                        res.send({msg:"商品插入失败",code:0})
                    }
                    res.send({msg:"商品插入成功",code:"ok"})
                })
            }
        })
        
        
    }
})
router.post("/delete",(req,res)=>{
    var arr=req.body.arr;
    arr=arr.split(",")
    console.log(arr);
    for(var item of arr){
        //console.log(item)
        var sql="DELETE FROM mini_shopCart WHERE pid=?"
        pool.query(sql,[item],(err,result)=>{
            console.log(result.affectedRow>0)
    
        })
    }
   
res.send("11")
   
})
//http://localhost:7000/shopCart/delete
module.exports=router;