const express=require('express');
//引入用户路由器
const carouselRouter=require('./router/carousel.js');
const hotRouter=require('./router/hot.js');
const domRouter=require('./router/dom.js');
const proRouter=require('./router/pro.js');
const juiRouter=require('./router/jui.js');
const userRouter=require('./router/user.js');
const productsRouter=require('./router/products.js');
const detailsRouter=require('./router/details.js');
const leftNavRouter=require('./router/leftNav.js');
const adRouter=require('./router/ad.js');
const brandRouter=require('./router/brand.js');
const newsshowRouter=require('./router/newscentershow.js');
const newscenterRouter=require('./router/newscenter.js');
const recommandRouter=require('./router/recommand.js');
const productsnavRouter=require('./router/productsnav.js');
const messagesRouter=require('./router/messages.js');
const productsnameRouter=require('./router/productsname.js');
const searchRouter=require('./router/search.js');
const cartRouter=require('./router/cart.js');
//测试
const testRouter=require('./router/test.js');
//引入body-parser中间件模块
const bodyParser=require('body-parser');
//console.log(userRouter);
//创建web服务器
const app=express();
//设置端口
app.listen(9000);
//托管静态资源到public目录
app.use( express.static(__dirname+'/public') );
//应用body-parser中间件，将post请求的数据解析为对象
app.use( bodyParser.urlencoded({
  extended:false
}) );

//路由器最后
//挂载用户路由器，添加前缀/user   
// app.use( '/user',userRouter );
app.use( '/carousel',carouselRouter);
app.use( '/hot',hotRouter);
app.use( '/dom',domRouter);
app.use( '/pro',proRouter);
app.use( '/jui',juiRouter);
app.use( '/user',userRouter);
app.use( '/products',productsRouter);
app.use( '/details',detailsRouter);
app.use( '/leftNav',leftNavRouter);
app.use( '/ad',adRouter);
app.use( '/brand',brandRouter);
app.use( '/newscentershow',newsshowRouter);
app.use( '/newscenter',newscenterRouter);
app.use( '/recommand',recommandRouter);
app.use( '/productsnav',productsnavRouter);
app.use( '/messages',messagesRouter);
app.use( '/productsname',productsnameRouter);
app.use( '/search',searchRouter);
app.use( '/cart',cartRouter);
//测试s
app.use('/test',testRouter);