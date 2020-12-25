const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//console.log(pool);
//创建路由器对象
const r=express.Router();
// 查询所有的个人购物车数据
r.get("/:pid",(req,res)=>{
  let pid=req.params.pid;
  let sql="select * from fruit_cart where uid=?";
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})
// 插入新的商品到数据库
r.post("/add",(req,res)=>{
  let obj=req.body;
  let sql="insert into fruit_cart set ?";
  pool.query(sql,[obj],(err,result)=>{
    if(err) throw err;
    res.send({code:200,msg:"success"});
  })
})
// 增加购物车里面商品的数量
r.post("/addOneNum",(req,res)=>{
  let obj=req.body;
  let sql="update fruit_cart set num=? where title=? and uid=?";
  let num=parseInt(obj.num)+1;
  pool.query(sql,[num,obj.title,obj.uid],(err,result)=>{
    if(err) throw err;
    res.send({code:200});
  })
})
// 减少购物车里面商品的数量
r.post("/incrementOneNum",(req,res)=>{
  let obj=req.body;
  let sql="update fruit_cart set num=? where title=? and uid=?";
  let num=parseInt(obj.num);
  pool.query(sql,[num,obj.title,obj.uid],(err,result)=>{
    if(err) throw err;
    res.send({code:200});
  })
})
// 删除购物车的商品
r.post("/delOne",(req,res)=>{
  let obj=req.body;
  let sql="delete from fruit_cart where title=? and uid=?";
  pool.query(sql,[obj.title,obj.uid],(err,result)=>{
    if(err) throw err;
    res.send({code:200});
  })
})

//导出路由器对象
module.exports=r;