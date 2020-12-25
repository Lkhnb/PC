const express = require('express');
//引入连接池模块
const pool = require('../pool.js');
//console.log(pool);
//创建路由器对象
const r = express.Router();
r.get("/messages", (req, res) => {
    var sql = "select * from fruit_messages";
    pool.query(sql, (err, result) => {
        if (err) throw err;

        res.json(result);

    })
});
module.exports = r;