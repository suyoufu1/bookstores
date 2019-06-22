<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>产品详情</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="js/common.js"  type="text/javascript"></script>
<SCRIPT LANGUAGE="JavaScript">
<!-- Hide
function killErrors() {
return true;
}

</SCRIPT>
</head>
<body class="index">
<div class="top_ad"><div class="w1200"><a href="#" id="close"></a></div></div>

<div class="top">
	<div class="w1200">
		<div class="left">您好，欢迎光临易易城！<a href="#">${book.name}</a> <a href="#"></a></div>
        <div class="right"><a href="#">我的会员中心</a>|<a href="#">收藏夹</a>|<a href="#">服务中心</a>|<a href="#">在线客服</a>|<a href="shopcar.jsp">购物车<b>0</b>件</a></div>
        <div class="clear"></div>
    </div>
</div>

<div class="head">
	<div class="w1200">
    	<div class="logo"><a href="#"></a></div>
        <div class="search">
        	<form action="#" class="form">
        		<input type="text" value="输入商品关键字" name="keyword" class="txt" onfocus="if(value=='输入商品关键字') {value=''}" onblur="if(value=='') {value='输入商品关键字'}"/>
                <input type="submit" value="搜索" class="sub"/>
            </form>
        </div>
        <div class="s_r">
        	<dl>
            	<dt><p>购物车<span>0</span></p></dt>
            </dl>
        </div>
        <div class="clear"></div>
    </div>
</div>



<div class="w1200 product">
	<div class="position"><a href="#">首页</a> </div>
    
    <link rel="stylesheet" href="css/detail.css" type="text/css" />
	<script src="js/jquery-1.5.1.js" type="text/javascript"></script>
    <script src="js/jquery.jqzoom.js" type="text/javascript"></script>
    <script src="js/use_jqzoom.js" type="text/javascript"></script>
    
    <script src="js/jquery.livequery.js" type="text/javascript"></script>
    <script src="js/switchImg.js" type="text/javascript"></script>
    <!--one-->
            <div class="one">
            	<div class="left">
                    <!--放大镜-->
                	<div class="pro_detail">
                        <div class="pro_detail_left">
                            <div class="jqzoom"><img src="images/img/img10.jpg" class="fs" alt="" jqimg="images/img/img10.jpg" id="Img"/></div>
                            <span>
                                 
                             </span>
                        </div>
                    </div>
                    <!--放大镜-->
                </div>
                <div class="right">
                     <div class="name">
                    	<table width="100%" height="61" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="8%">${book.name}</td>
                           </td>
                          </tr>
                        </table>
                  	</div>
                    <div class="price">
                    	<table width="100%" height="61" border="0" cellpadding="0" cellspacing="0">
                          <tr>
                            <td width="8%">售价：</td>
                            <td width="41%"><b>￥26</b></td>
                            <td width="7%">原价：</td>
                            <td width="44%"><del>￥45</del></td>
                          </tr>
                        </table>
                  	</div>
                    <div class="number">
                        <small>数量：</small><input type="text" class="num" value="1"/><span class="jian"></span><span class="jia"></span>
                        <div class="ku"><p>本&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;库存4本</p></div>
                        <div class="clear"></div>
                    </div>
                    <div class="sale"><small>销量：</small><span class="on">0</span><div class="clear"></div></div>
                    <div class="sub"><a href="#" class="btn01"></a><a href="shopcar.jsp"" class="btn02"></a></div>
                </div>
                <div class="clear"></div>
            </div>
            
            <div class="share w1200">
               <table width="100%" border="0" cellspacing="0" cellpadding="0">
                  <tr>
                            <td width="13%">收藏商品 已有<b>0</b>人气</td>
                            <td width="87%">
                                <div class="bdsharebuttonbox"><a href="#" class="bds_more" data-cmd="more"></a><a href="#" class="bds_qzone" data-cmd="qzone"></a><a href="#" class="bds_tsina" data-cmd="tsina"></a><a href="#" class="bds_tqq" data-cmd="tqq"></a><a href="#" class="bds_renren" data-cmd="renren"></a><a href="#" class="bds_weixin" data-cmd="weixin"></a></div>
                <script>window._bd_share_config={"common":{"bdSnsKey":{},"bdText":"","bdMini":"2","bdPic":"","bdStyle":"0","bdSize":"16"},"share":{},"image":{"viewList":["qzone","tsina","tqq","renren","weixin"],"viewText":"分享到：","viewSize":"16"},"selectShare":{"bdContainerClass":null,"bdSelectMiniList":["qzone","tsina","tqq","renren","weixin"]}};with(document)0[(getElementsByTagName('head')[0]||body).appendChild(createElement('script')).src='http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='+~(-new Date()/36e5)];</script><span>分享到:</span>
                    </td>
                 </tr>
                </table>
			</div>
            
            
                  
</div>




<script type="text/javascript">
$(function(){
var imgWid = 0 ;
var imgHei = 0 ; //变量初始化
var big = 6.2;//放大倍数
$(".pj_item .two2 p img").hover(function(){
$(this).stop(true,true);
var imgWid2 = 0;var imgHei2 = 0;//局部变量
imgWid = $(this).width();
imgHei = $(this).height();
imgWid2 = imgWid * big;
imgHei2 = imgHei * big;
$(this).css({"z-index":2,"position":"relative"});
$(this).animate({"width":imgWid2,"height":imgHei2,"margin-left":-imgWid2/3,"margin-top":-imgWid2/3});
},function(){$(this).stop().animate({"width":imgWid,"height":imgHei,"margin-left":0,"margin-top":0,"z-index":1});
});
})
</script>
</body>
</html>
