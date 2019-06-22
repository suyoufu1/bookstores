<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>注册</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body class="member">

	<div class="w1185">
    	 <div class=""><a href="#"></a></div>
        <div class="font-d">欢迎登陆</div>
        <div class="search">
        	<form action="${pageContext.request.contextPath}/RegisterServlet" class="form" method="post">
        		<input type="text" value="输入商品关键字" name="keyword" class="txt" onfocus="if(value=='输入商品关键字') {value=''}" onblur="if(value=='') {value='输入商品关键字'}"/>
                <input type="submit" value="搜索" class="sub"/>
            </form>
        </div>
        <div class="s_r"><img src="images/tel.jpg"/></div>
        <div class="clear"></div>
    </div>

<div class="reg">
	<div class="w1185">
    	<div class="left">
        	<p><b>免费注册</b></p>
            <form action="${pageContext.request.contextPath}/RegisterServlet" class="form" method="post">
                <ul>
                     <li><span><font>*</font> 用户名：</span><input type="text" name="username" value="${uf.username}" class="txt"/>
                     	<font color="red">${uf.err['username'] }</font>
                     </li>
                     <li><span><font>*</font> 请设置密码：</span><input type="password" name="password" value="${uf.password}" class="txt"/>
                     	<font color="red">${uf.err['password'] }</font>
                     </li>
                     <li><span><font>*</font> 请确认密码：</span><input type="password" name="repassword" value="${uf.repassword}" class="txt"/>
                     	<font color="red">${uf.err['repassword'] }</font>
                     </li>
                     
                     <li><span><font>*</font> 电话：</span><input type="text" name="phone" value="${uf.phone}" value="${uf.repassword}" class="txt"/>
                     	<font color="red">${uf.err['phone'] }</font>
                     </li>
                     <li><span><font>*</font> 地址：</span><input type="text" name="address" value="${uf.address}" class="txt"/>
                     	<font color="red">${uf.err['address'] }</font>
                     </li>
                     <li><span><font>*</font> 邮箱：</span><input type="text" name="email" value="${uf.email}" class="txt"/>
                     	<font color="red">${uf.err['email'] }</font>
                     </li>
                     <li class="li03"><span><font>*</font> 验证码：</span><input type="text" name="" class="txt txt2"/><img src="images/code.jpg"/><a href="#">看不清?换一张</a></li>
                     <li class="li01"><input type="checkbox" value="" name=""/>我已阅并同意<a rel="#">《用户注册协议》</a></li>
                     <li class="li02"><input type="submit" value="立即注册" class="sub"/></li>
                </ul>
            </form>
        </div>
        <div class="right">我经注册，马上<a rel="loginlead.jsp" href="loginlead.jsp">登录</a></div>
        <div class="clear"></div>
    </div>
</div>
<div class="bottom">
	<a href="#">关于我们</a>|<a href="#">帮助中心</a>|<a href="${pageContext.request.contextPath}/LoginAdminer.jsp">后台登录</a>
   
    
</div>

</body>
</html>
 