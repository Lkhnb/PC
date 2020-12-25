const express=require('express');
//引入连接池模块
const pool=require('../pool.js');
//console.log(pool);
//创建路由器对象
const r=express.Router();
//1.用户注册  post  /reg
r.post('/reg',(req,res)=>{
  //1.1获取post请求的数据
  let obj=req.body;
  console.log(obj);
  //1.2检测各项数据是否为空
  if(!obj.uname){
    res.send({code:401,msg:'uname required'});
	//阻止往后执行
	return;
  }
  if(!obj.upwd){
    res.send({code:402,msg:'upwd required'});
	return;
  }
  if(!obj.email){
    res.send({code:403,msg:'email required'});
	return;
  }

  //1.3将数据插入到数据表xz_user中
  //执行SQL命令
  pool.query('INSERT INTO fruit_user SET ?',[obj],(err,result)=>{
    if(err) throw err;
    res.send({code:200,msg:'reg suc'});
  });
});
//2.用户登录  post  /login
r.get("/login",(req,res)=>{
	var _uname=req.query.uname;
	var _upwd=req.query.upwd;
	var sql="select * from fruit_user where uname=? and upwd=?";
	pool.query(sql,[_uname,_upwd],(err,result)=>{
		if(err) throw err;
		if(result.length>0){
			res.send({code:1,info:result[0]});
		}else{
			res.send("0");
		}
	});
});


//导出路由器对象
module.exports=r;