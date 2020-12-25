const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//console.log(pool);
//创建路由器对象
const r = express.Router();
r.get("/newscenter/:pid", (req, res) => {
    let pid=req.params.pid;
    var sql = "select * from fruit_newsCenter where pid=?";
    pool.query(sql,[pid] ,(err, result) => {
        if (err) throw err;

        res.json(result);

    })
});
module.exports = r;