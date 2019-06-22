<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>管理员注册页面</title>
</head>
<body>
<form action="${pageContext.request.contextPath}/RegisterAdminServlet" method="post">
	<table border="1">
		<tr>
			<td>用户名:</td>
			<td><input type="text" name="name" value="${uf.name}">
			<font color="red">${uf.err['name'] }</font></td>
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
			<td>电话号</td>
			<td><input type="text" name="phone" value="${uf.phone}">
			<font color="red">${uf.err['phone'] }</font>
			</td>
		</tr>
		<tr>
			<td>邮箱:</td>
			<td><input type="text" name="email" value="${uf.email}">
			<font color="red">${uf.err['email'] }</font>
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="注册 ">
			</td>
		</tr>
	</table>
</form>
</body>
</html>