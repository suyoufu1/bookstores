<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>登陆</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
</head>
<body class="member">

	<div class="w1185">
      <div class="w1200">
    	 <div class=""> <a href="#"></a></div>
       </div>
        <div class="clear"></div>
    </div>

<div class="m_bg" >
	<div class="w1185" >
    	<form action="${pageContext.request.contextPath}/LoginServlet" method="post" class="form">
        	<p class="p01"><span>登录</span><a href="reg.jsp">免费注册</a></p>
        	<p class="p02"><input type="text" value="账户名" name="username" class="txt" onfocus="if(value=='账户名') {value=''}" onblur="if(value=='') {value='账户名'}"/></p>
            <p class="p03"><input type="password" value="密码" name="password" class="txt" onfocus="if(value=='密码') {value=''}" onblur="if(value=='') {value='密码'}"/></p>
            <p class="p04"><span class="sp01"><input type="checkbox" name=""/>自动登录</span><span class="sp02">忘记密码？点击<a href="#">找回密码</a></span></p><br>
            <font color="red">${message}</font>
            <p class="p05"><input type="submit" value="立即登陆" class="sub"/></p>
        </form>
    </div>
</div>


</body>
</html>
