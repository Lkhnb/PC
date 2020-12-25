const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//console.log(pool);
//创建路由器对象
const r=express.Router();
r.get("/leftNav",(req,res)=>{
	var _pid=req.params.pid;
	var sql="select * from fruit_leftNav";
	pool.query(sql,[_pid],(err,result)=>{
		if(err) throw err;
		res.json(result);
	})
});
module.exports=r;