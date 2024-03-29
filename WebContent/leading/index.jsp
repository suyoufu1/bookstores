﻿<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="js/common.js"  type="text/javascript"></script>
<script>
    $(function(){   
    $('a[href*=#],area[href*=#]').click(function() {
        if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
            var $target = $(this.hash);
            $target = $target.length && $target || $('[name=' + this.hash.slice(1) + ']');
            if ($target.length) {
                var targetOffset = $target.offset().top;
                $('html,body,.div1').animate({
                    scrollTop: targetOffset
                },
                1000);
                return false;
            }
        }
    });
})
</script>
</head>
<body class="index">
<div class="top_ad"><div class="w1200"><a href="#" id="close"></a></div></div>

<div class="top">
	<div class="w1200">
		<div class="left">您好，欢迎光临易易城！<a href="login.html">[登录]</a> <a href="reg.jsp">[注册]</a></div>
        <div class="right"><a href="#">我的会员中心</a>|<a href="#">收藏夹</a>|<a href="#">服务中心</a>|<a href="#">在线客服</a>|<a href="#">购物车<b>0</b>件</a></div>
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
        	<p><a href="#">iphone6s</a>|<a href="#">面膜</a>|<a href="#">婚庆床品</a>|<a href="#">运动鞋</a>|<a href="#">眼霜</a>|<a href="#">月饼</a>|<a href="#">智能手机</a>|<a href="#">连衣裙</a></p>
        </div>
        <div class="s_r">
        	<dl>
            	<dt><p>购物车<span>0</span></p></dt>
                
            </dl>
        </div>
        <div class="clear"></div>
    </div>
</div>

<div class="menu">
	<div class="w1200">
    	<div class="item" id="nav"><a href="#" class="nav">全部商品分类</a>
        	<div class="nav_son">
            	<ul>
                	<li class="li01"><a href="#">功能产品</a></li>
                    <li class="li02"><a href="#">服装箱包</a></li>
                    <li class="li03"><a href="#">美妆护肤</a></li>
                    <li class="li04"><a href="#">珠宝饰品</a></li>
                    <li class="li05"><a href="#">数码家电</a></li>
                    <li class="li06"><a href="#">食品茶酒</a></li>
                    <li class="li07"><a href="#">运动体育</a></li>
                    <li class="li08"><a href="#">家居家纺</a></li>
                    <li class="li09"><a href="#">生活服务</a></li>
                    <li class="li10"><a href="#">其他</a></li>
                </ul>
                <div class="hover">
                	<div id="son">
                    	<dl>
                        	<dt>手机</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                            <dt>手机配件</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                        	<div class="clear"></div>
                        </dl>
                        <dl>
                            <dt>摄像摄影</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                        	<div class="clear"></div>
                        </dl>
                        <dl>
                            <dt>数码配件</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                        	<div class="clear"></div>
                        </dl>
                       	<dl>
                            <dt>智能设备</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                        	<div class="clear"></div>
                        </dl>
                    </div>
                    
                    <div id="son">
                    	<dl>
                        	<dt>手机</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                            <div class="clear"></div>
                        </dl>
                    </div>
                    
                    <div id="son">
                    	<dl>
                        	<dt>手机</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                        	<dt>手机</dt>
                            <dd><a href="#">全部手机</a><a href="#" class="red">小米</a><a href="#">iPhone</a><a href="#">华为</a><a href="#">三星</a><a href="#">魅族</a><a href="#">PPTV</a><a href="#">一加</a><a href="#">OPPO</a><a href="#">vivo</a><a href="#">联想</a><a href="#">美图</a><a href="#">乐视</a><a href="#">奇酷</a><a href="#">大神</a><a href="#">努比亚</a><a href="#">锤子</a><a href="#">HTC</a><a href="#">诺基亚</a></dd>
                            <div class="clear"></div>
                        </dl>
                    </div>

                </div>
            </div>
        </div>
   	  <div class="item"><a href="#" class="home">商城首页</a></div>
        <div class="item"><a href="#">易易特色</a></div>
        <div class="item"><a href="#">热销产品</a></div>
        <div class="item"><a href="#">新品上市</a></div>
        <div class="item"><a href="#">精品推荐</a></div>
        <div class="item"><a href="#">生活服务</a></div>
    </div>
</div>

<script type="text/javascript">
$(document).ready(function(e) {

    $('#slider li').eq(0).show();
	var lenThumb = $('#slider li').length;
	for(var i=1;i<=lenThumb;i++){
		$('#num').append('<span>'+i+'</span>');
	}
	$('#num span').eq(0).addClass('on');
	var len = $('#num span').length;
	var index = 0;

	$('#num span').click(function(){
		index = $('#num span').index(this);
		picShow(index);
	});
	var playPic = setInterval(function(){
		picShow(index);
		index++;
		if(index==len){index=0}
	},3000);
	function picShow(i){
		$('#slider li').eq(i).stop(true,true).fadeIn().siblings().fadeOut();
		$('#num > span').eq(i).addClass('on').siblings().removeClass('on');
	}

});
</script>
<div class="banner">
	<ul id="slider">
        <li style="background:url(images/home/banner.jpg) no-repeat center;"><a href="#"></a></li>
        <li style="background:url(images/home/banner.jpg) no-repeat center;"><a href="#"></a></li>
        <li style="background:url(images/home/banner.jpg) no-repeat center;"><a href="#"></a></li>
    </ul>
    
    <div class="w_auto">
        <div class="clearfix"></div>
        <div id="num" class="point"></div>
    </div>
</div>

<div class="w1201">
	<a name="a01"></a>
	<div class="idx01">
    	<div class="rollBox">
            <dl>
                <dt><b>限时抢购</b><span>让生活精彩不停</span><p><img onMouseDown="ISL_GoDown()" onMouseUp="ISL_StopDown()" onMouseOut="ISL_StopDown()"  class="img1" src="images/home/ico13.jpg" width="23" height="23" />
                    <img  onmousedown="ISL_GoUp()" onMouseUp="ISL_StopUp()" onMouseOut="ISL_StopUp()"  class="img2" src="images/home/ico14.jpg" width="23" height="23" /></p></dt>
                <dd>
                    <div class="Cont" id="ISL_Cont">
                      <div class="ScrCont">
                         <div id="List1">
                            <!-- 图片列表 begin -->
                           <ul>
                               <li class="pic">
                                   <p class="p01">保护儿童行车安全</p>
                                   <p class="p02">
                                      <font>￥</font><b>1320</b><br />
                                      <span>happy baby<br />儿童安全座椅</span>
                                      <a href="#" class="buy">立即抢购 ></a>
                                   </p>
                                   <img src="images/img/img.jpg"/>
                               </li>
                                <li class="pic">
                                   <p class="p01">阳澄湖大闸蟹</p>
                                   <p class="p02">
                                      <font>￥</font><b>196</b><br />
                                      <span>买一送一<br />鲜活直达</span>
                                      <a href="#" class="buy">立即抢购 ></a>
                                   </p>
                                   <img src="images/img/img3.jpg"/>
                               </li>
                               <li class="pic">
                                   <p class="p01">韩后919爱购节</p>
                                   <p class="p02">
                                      <font>￥</font><b>1320</b><br />
                                      <span>最IN进口面膜<br />敷起来</span>
                                      <a href="#" class="buy">立即抢购 ></a>
                                   </p>
                                   <img src="images/img/img2.jpg"/>
                               </li>
                           </ul>
                     
                            <!-- 图片列表 end -->
                           </div>
                          <div id="List2"></div>
                      </div>
                   </div>
                </dd>
            </dl>
        </div>
    </div>
    
    <div class="idx_ad"><img src="images/home/ico39.jpg"/></div>
    <a name="a02"></a>
    <div class="idx02">
    	<dl>
        	<dt>易易特色</dt>
            <dd>
            	<div class="item big">
                	<a href="#" class="title">苹果WATCH手表 智能穿戴 智能手表 Apple Watch</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img4.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img9.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img10.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img7.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img8.jpg"/>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
    <a name="a03"></a>
    <div class="idx02" id="idx03">
    	<dl>
        	<dt>新品上市</dt>
            <dd>
            	<div class="item big">
                    <a href="#"><img src="images/img/img11.jpg"/></a>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img13.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img12.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img5.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img14.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img16.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img17.jpg"/>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
	
    <div class="idx_ad"><img src="images/home/ico28.jpg"/></div>
    <a name="a04"></a>
     <div class="idx02" id="idx04">
    	<dl>
        	<dt>热销产品</dt>
            <dd>
            	<div class="item big">
                	<a href="#" class="title">苹果WATCH手表 智能穿戴 智能手表 Apple Watch</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img18.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img20.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img19.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img23.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img24.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img21.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img22.jpg"/>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
    <a name="a05"></a>
    <div class="idx02" id="idx05">
    	<dl>
        	<dt>精品推荐</dt>
            <dd>
            	<div class="item big">
                    <a href="#"><img src="images/img/img25.jpg"/></a>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img27.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img26.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img29.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img30.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img31.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img28.jpg"/>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
    <a name="a06"></a>
     <div class="idx02" id="idx06">
    	<dl>
        	<dt>生活服务</dt>
            <dd>
            	<div class="item big">
                	<a href="#" class="title">苹果WATCH手表 智能穿戴 智能手表 Apple Watch</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img32.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img33.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img34.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img35.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img36.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img37.jpg"/>
                </div>
                <div class="item">
                	<a href="#" class="title">Apple/苹果ipad mini2 32GB银7.9英寸平板电脑</a>
                    <p><font>￥</font>2658.<font>00</font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img38.jpg"/>
                </div>
                <div class="clear"></div>
            </dd>
        </dl>
    </div>
    
    <div class="idx_ad"><img src="images/home/ico28.jpg"/></div>
</div>

<!--footer-->
<div class="footer">
	<div class="f_bz">
    	<div class="w1200">
            <dl class="dl01">
                <dt>正品保证</dt>
                <dd>正品护航  购物无忧</dd>
            </dl>
            <dl class="dl02">
                <dt>你消费 我买单</dt>
                <dd>返现购物商城</dd>
            </dl>
            <dl class="dl03">
                <dt>品类丰富</dt>
                <dd>品类齐全 轻松购物</dd>
            </dl>
            <dl class="dl04">
                <dt>特色服务体验</dt>
                <dd>为您呈现不一样的服务</dd>
            </dl>
            <div class="clear"></div>
        </div>
    </div>
	<div class="f_nav">
    	<div class="w1200">
            <dl>
                <dt>新手指南</dt>
                <dd>
                    <a href="#">注册新用户</a>
                    <a href="#">商品订购流程</a>
                    <a href="#">会员注册协议</a>
                </dd>
            </dl>
            <dl>
                <dt>付款方式</dt>
                <dd>
                    <a href="#">支付宝支付</a>
                    <a href="#">网上银行支付</a>
                    <a href="#">货到付款</a>
                </dd>
            </dl>
            <dl>
                <dt>常见问题</dt>
                <dd>
                    <a href="#">订单状态</a>
                    <a href="#">发票说明</a>
                </dd>
            </dl>
            <dl>
                <dt>售后服务</dt>
                <dd>
                    <a href="#">退换货政策</a>
                    <a href="#">退换货流程</a>
                    <a href="#">退款说明</a>
                    <a href="#">退换货申请</a>
                </dd>
            </dl>
            <dl>
                <dt>客服中心</dt>
                <dd>
                    <a href="#">常见问题</a>
                    <a href="#">联系客服</a>
                    <a href="#">投诉与建议</a>
                </dd>
            </dl>
            <div class="ewm"><img src="images/home/ico35.png"/></div>
            <div class="ewm"><img src="images/home/ico38.png"/></div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="w1200">
        <div class="bottom">
            <a href="#">关于我们</a>|<a href="#">帮助中心</a>|<a href="#">法律声明</a>|<a href="#">用户协议</a>|<a href="#">联系我们</a>|<a href="#">人才招聘</a>|<a href="#">站点地图</a>
           
            <p>网络文化经营许可证：粤网文[2015]0295-065号<br />© 2015 深圳易易城科技网络有限公司. 粤ICP备15042543号</p>
            <p class="p02"><img src="images/home/ico25.jpg"/><img src="images/home/ico26.jpg"/><img src="images/home/ico27.jpg"/><img src="images/home/ico36.jpg"/><img src="images/home/ico37.jpg"/></p>
        </div>
    </div>
</div>
<!--float_right-->
<div class="float">
	<ul>
    	<li><a href="#" class="a01"></a></li>
        <li><a href="#" class="a02"></a></li>
        <li><a href="#" class="a03"></a></li>
        <li><a href="#" class="a04"></a></li>
    </ul>
</div>
<!--float_left-->
<div class="float2">
	<ul>
    	<li><a href="#a01" class="a01 on" id="idx01">限时抢购</a></li>
        <li><a href="#a02" class="a02" id="idx02"></a></li>
        <li><a href="#a03" class="a03" id="idx03"></a></li>
        <li><a href="#a04" class="a04" id="idx04"></a></li>
        <li><a href="#a05" class="a05" id="idx05"></a></li>
        <li><a href="#a06" class="a06" id="idx06"></a></li>
    </ul>
</div>
<script language="javascript" type="text/javascript">
$(function () {
        var dv = $(".idx01").offset().top;
		var dv2 = $(".idx02").offset().top;
		var dv3 = $("#idx03").offset().top;
		var dv4 = $("#idx04").offset().top;
		var dv5 = $("#idx05").offset().top;
		var dv6 = $("#idx06").offset().top;
		window.onscroll=function(){
			if(dv<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a01").addClass("on");
				
			}
			if(dv2<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a02").addClass("on");
			}
			if(dv3<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a03").addClass("on");
			}
			if(dv4<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a04").addClass("on");
			}
			if(dv5<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a05").addClass("on");
			}
			if(dv6<document.body.scrollTop)
			{
				$(".float2 a").removeClass("on");
				$(".float2 .a06").addClass("on");
			}
		}
    });
</script>
<script language="javascript" type="text/javascript">
<!--//--><![CDATA[//><!--
//图片滚动列表 mengjia 070816
var Speed = 10; //速度(毫秒)
var Space = 10; //每次移动(px)
var PageWidth = 404; //翻页宽度
var fill = 0; //整体移位
var MoveLock = false;
var MoveTimeObj;
var Comp = 0;
var AutoPlayObj = null;
GetObj("List2").innerHTML = GetObj("List1").innerHTML;
GetObj('ISL_Cont').scrollLeft = fill;
GetObj("ISL_Cont").onmouseover = function(){clearInterval(AutoPlayObj);}
GetObj("ISL_Cont").onmouseout = function(){AutoPlay();}
AutoPlay();
function GetObj(objName){if(document.getElementById){return eval('document.getElementById("'+objName+'")')}else{return eval

('document.all.'+objName)}}
function AutoPlay(){ //自动滚动
clearInterval(AutoPlayObj);
AutoPlayObj = setInterval('ISL_GoDown();ISL_StopDown();',5000); //间隔时间
}
function ISL_GoUp(){ //上翻开始
if(MoveLock) return;
clearInterval(AutoPlayObj);
MoveLock = true;
MoveTimeObj = setInterval('ISL_ScrUp();',Speed);
}
function ISL_StopUp(){ //上翻停止
clearInterval(MoveTimeObj);
if(GetObj('ISL_Cont').scrollLeft % PageWidth - fill != 0){
Comp = fill - (GetObj('ISL_Cont').scrollLeft % PageWidth);
CompScr();
}else{
MoveLock = false;
}
AutoPlay();
}
function ISL_ScrUp(){ //上翻动作
if(GetObj('ISL_Cont').scrollLeft <= 0){GetObj('ISL_Cont').scrollLeft = GetObj

('ISL_Cont').scrollLeft + GetObj('List1').offsetWidth}
GetObj('ISL_Cont').scrollLeft -= Space ;
}
function ISL_GoDown(){ //下翻
clearInterval(MoveTimeObj);
if(MoveLock) return;
clearInterval(AutoPlayObj);
MoveLock = true;
ISL_ScrDown();
MoveTimeObj = setInterval('ISL_ScrDown()',Speed);
}
function ISL_StopDown(){ //下翻停止
clearInterval(MoveTimeObj);
if(GetObj('ISL_Cont').scrollLeft % PageWidth - fill != 0 ){
Comp = PageWidth - GetObj('ISL_Cont').scrollLeft % PageWidth + fill;
CompScr();
}else{
MoveLock = false;
}
AutoPlay();
}
function ISL_ScrDown(){ //下翻动作
if(GetObj('ISL_Cont').scrollLeft >= GetObj('List1').scrollWidth){GetObj('ISL_Cont').scrollLeft =

GetObj('ISL_Cont').scrollLeft - GetObj('List1').scrollWidth;}
GetObj('ISL_Cont').scrollLeft += Space ;
}
function CompScr(){
var num;
if(Comp == 0){MoveLock = false;return;}
if(Comp < 0){ //上翻
if(Comp < -Space){
   Comp += Space;
   num = Space;
}else{
   num = -Comp;
   Comp = 0;
}
GetObj('ISL_Cont').scrollLeft -= num;
setTimeout('CompScr()',Speed);
}else{ //下翻
if(Comp > Space){
   Comp -= Space;
   num = Space;
}else{
   num = Comp;
   Comp = 0;
}
GetObj('ISL_Cont').scrollLeft += num;
setTimeout('CompScr()',Speed);
}
}
//--><!]]>
</script>
</body>
</html>
