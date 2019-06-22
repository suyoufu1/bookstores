<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/RegisterServlet" method="post">
	<table border="1">
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="username" value="${uf.username}">
			<font color="red">${uf.err['username'] }</font></td>
		</tr>
		<tr>
			<td>密码:</td>
			<td>
			<input type="password" name="password" value="${uf.password}">
			<font color="red">${uf.err['password'] }</font>
			</td>
		</tr>
		<tr>
			<td>确认密码</td>
			<td><input type="password" name="repassword" value="${uf.repassword}">
			<font color="red">${uf.err['repassword'] }</font>
			</td>
		</tr>
		<tr>
			<td>电话</td>
			<td><input type="text" name="phone" value="${uf.phone}">
			<font color="red">${uf.err['phone'] }</font>
			</td>
		</tr>
		<tr>
			<td>地址</td>
			<td><input type="text" name="address" value="${uf.address}">
			<font color="red">${uf.err['address'] }</font>
			</td>
		</tr>
		
		<tr>
			<td>邮箱:</td>
			<td><input type="text" name="email" value="${uf.email}">
			<font color="red">${uf.err['email'] }</font>
			</td>
		</tr>
		
		<tr>
			<td >
				<input type="submit" value="注册 ">
			</td>
			<td >
			<a href="${pageContext.request.contextPath}/login.jsp">返回
				
			</a>
				
			</td>
		</tr>
	</table>
</form>
</body>
</html> 