const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//console.log(pool);
//创建路由器对象
const r=express.Router();
r.get("/:pid",(req,res)=>{
	var _pid=req.params.pid;
	var sql="select * from fruit_details where pid=?";
	pool.query(sql,[_pid],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.json(result);
		}else{
			res.send("数据有误,请重新编译");
		}
	})
});
module.exports=r;