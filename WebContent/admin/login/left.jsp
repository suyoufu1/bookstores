<%@ page language="java" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>菜单</title>
<link href="${pageContext.request.contextPath}/admin/css/left.css" rel="stylesheet" type="text/css">
<link rel="StyleSheet" href="${pageContext.request.contextPath}/admin/css/dtree.css" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/dtree.js"></script>
</head>
<body>
<table width="100" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td height="12"></td>
  </tr>
</table>
<table width="100%" border="0">
  <tr>
    <td>
<div class="dtree">

	<a href="javascript: d.openAll();">展开所有</a> | <a href="javascript: d.closeAll();">关闭所有</a>
	
	<script type="text/javascript">
		<!--
		d = new dTree('d');
		d.add(0,-1,'系统菜单');
		d.add(1,0,'商品管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		
		
		//商品管理的子目录添加
		d.add(11,1,'商品查看','${pageContext.request.contextPath}/BookListServlet','','mainFrame');
		d.add(12,1,'购物车信息','${pageContext.request.contextPath}/OrderitemListServlet','','mainFrame');
		
		d.add(2,0,'订单管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(21,2,'订单查看','${pageContext.request.contextPath}/OrderListServlet','','mainFrame');
		
		d.add(3,0,'用户管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(31,3,'用户信息','${pageContext.request.contextPath}/UserListServlet','','mainFrame');
		
		d.add(4,0,'留言管理','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(41,4,'留言信息','${pageContext.request.contextPath}/MessegeListServlet','','mainFrame');
		
		d.add(5,0,'管理员','${pageContext.request.contextPath}/admin/login/welcome.jsp','','mainFrame');
		d.add(51,5,'管理员信息','${pageContext.request.contextPath}/AdminerListServlet','','mainFrame');
		document.write(d);
		//-->
	</script>
</div>	</td>
  </tr>
</table>
</body>
</html>
