<%@ page language="java" contentType="text/html; charset=UTF-8"
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
<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/FindBookServlet1"
		method="post">
<div class="top">
	<div class="w1200">
		<div class="left">您好，欢迎光临书城！<a href="loginlead.jsp">${book.name}</a></div>
        <div class="right"><a href="#">我的会员中心</a>|<a href="#">购物车<b>0</b>件</a></div>
        <div class="clear"></div>
    </div>
</div>

<div class="head">
	<div class="w1200">
    	<div class="logo"><a href="#"></a></div>
        <div class="search">
        	<form action="#" class="form">
        		<input type="text" value="请输入书名" name="keyword" class="txt" onfocus="if(value=='输入商品关键字') {value=''}" onblur="if(value=='') {value='输入商品关键字'}"/>
                <input type="submit" value="搜索" class="sub"/>
            </form>
        	
        	
        	<c:forEach items="${pageResult.list}" var="book">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%"><a href="${pageContext.request.contextPath}/product_show.html">${book.name }</a></td>
									
									</td>
								</tr>
			</c:forEach>
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
    	<div class="item" id="nav"><a href="#" class="nav">全部书籍分类</a>
        	<div class="nav_son">
            	<ul>
                	<li class="li01"><a href="#">小说</a></li>
                    <li class="li02"><a href="#">文学</a></li>
                    <li class="li03"><a href="#">历史</a></li>
                    <li class="li04"><a href="#">传记</a></li>
                    <li class="li05"><a href="#">青春</a></li>
                    <li class="li06"><a href="#">励志</a></li>
                    <li class="li07"><a href="#">社科</a></li>
                    <li class="li08"><a href="#">心理</a></li>
                    <li class="li09"><a href="#">经济</a></li>
                    <li class="li10"><a href="#">其他</a></li>
                </ul>
                <div class="hover">
                	<div id="son">
                    	<dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                       	
                    </div>
                    
                    <div id="son">
                    	<dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                    </div>
                    
                    <div id="son">
                    	<dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                        <dl>
                        	<dt>推理悬疑</dt>
                            <dd><a href="#">全部</a><a href="#" class="red">奇货1-8</a><a href="#">十面埋伏</a><a href="#">见面山庄</a><a href="#">长夜难明</a></dd>
                            <div class="clear"></div>
                        </dl>
                    </div>

                </div>
            </div>
        </div>
   	  <div class="item"><a href="#" class="home">书城首页</a></div>
        <div class="item"><a href="#">推荐书籍</a></div>
        <div class="item"><a href="#">热销书籍</a></div>
        <div class="item"><a href="#">新品上市</a></div>
        <div class="item"><a href="#">精品推荐</a></div>
        <div class="item"><a href="#">服务</a></div>
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
        <li style="background:url(images/home/banner.png) no-repeat center;"><a href="#"></a></li>
        <li style="background:url(images/home/banner.png) no-repeat center;"><a href="#"></a></li>
        <li style="background:url(images/home/banner.png) no-repeat center;"><a href="#"></a></li>
    </ul>
    
    <div class="w_auto">
        <div class="clearfix"></div>
        <div id="num" class="point"></div>
    </div>
</div>


    <c:forEach items="${pageResult.list}" var="book">
   
    <a name="a02"></a>
    <div class="idx02">
    	<dl>
        	<dt>推荐书籍</dt>
            <dd>
            <table>
            	<tr>
            	<td>
            	
            	</td>
            	<td>
            	
            	<div class="item big">
                	<a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}">1${book.name }</a>
                    <p>￥99${book.price}</p>
                    <a href="#" class="buy">${book.name }</a>
                    <img src="images/img/img4.jpg"/>
                </div>
                </td>
                <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p>${book.price}</p>
                    <a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p></p>
                    <a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                  <td>
                <div class="item">
                	<a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}" class="title"></a>
                    <p><font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img9.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}" class="title"></a>
                    <p><font></font></p>
                    <a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}" class="buy"></a>
                    <img src="images/img/img10.jpg"/>
                </div>
                </td>
                </tr>
                </table>
            </dd>
        </dl>
    </div>
    </c:forEach>
    <a name="a03"></a>
    <div class="idx02" id="idx03">
    	<dl>
        	<dt>热销书籍</dt>
            <dd>
            	 <table>
            	<tr>
            	<td>
            	<div class="item big">
                	<a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}">${book.name }</a>
                    <p>￥${book.price}</p>
                    <a href="#" class="buy">${book.name }</a>
                    <img src="images/img/img6.jpg"/>
                </div>
                </td>
                <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p>${book.price}</p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                  <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p><font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img9.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p><font></font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img10.jpg"/>
                </div>
                </td>
                </tr>
                </table>
            </dd>
        </dl>
    </div>
	
    
    <a name="a05"></a>
    <div class="idx02" id="idx05">
    	<dl>
        	<dt>新品上市</dt>
            <dd>
            	 <table>
            	<tr>
            	<td>
            	<div class="item big">
                	<a href="${pageContext.request.contextPath}/BuyBookServlet?id=${book.id}">${book.name }</a>
                    <p>￥${book.price}</p>
                    <a href="#" class="buy">${book.name }</a>
                    <img src="images/img/img4.jpg"/>
                </div>
                </td>
                <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p>${book.price}</p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img6.jpg"/>
                </div>
                 </td>
                  <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p><font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img9.jpg"/>
                </div>
                 </td>
                 <td>
                <div class="item">
                	<a href="#" class="title"></a>
                    <p><font></font></p>
                    <a href="#" class="buy"></a>
                    <img src="images/img/img10.jpg"/>
                </div>
                </td>
                </tr>
                </table>
            </dd>
        </dl>
    </div>
    <a name="a06"></a>
  


	
    <div class="w1200">
        <div class="bottom">
            <a href="#">关于我们</a>|<a href="#">帮助中心</a>|<a href="loginAdminer.jsp" ><font color="red">后台登陆</font></a>
           
           
        </div>
    </div>
</div>
</form>
<!--float_left-->

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
