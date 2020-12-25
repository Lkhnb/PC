const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//console.log(pool);
//创建路由器对象
const r=express.Router();
//2.用户登录  post  /login
r.get("/index",(req,res)=>{
	var sql="select * from fruit_products";
	pool.query(sql,(err,result)=>{
		if(err) throw err;
        res.json(result);
	});
});
r.get("/:pid",(req,res)=>{
  let pid=req.params.pid;
  pid=pid.toString();
  let sql="select * from fruit_products where FIND_IN_SET(?,uid)";
  pool.query(sql,[pid],(err,result)=>{
    if(err) throw err;
    res.send(result);
  })
})


//导出路由器对象
module.exports=r;