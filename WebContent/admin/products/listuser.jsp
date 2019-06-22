<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<HTML>
<HEAD>
<meta http-equiv="Content-Language" content="zh-cn">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${pageContext.request.contextPath}/admin/css/Style.css"
	rel="stylesheet" type="text/css" />
<script language="javascript"
	src="${pageContext.request.contextPath}/admin/js/public.js"></script>
<script type="text/javascript">
	function addProduct() {
		window.location.href = "${pageContext.request.contextPath}/admin/products/add.jsp";
	}
	//删除书js代码
	function deleteUser(userName,userId) {
		//确认提示框
		if(confirm('是否要删除【' + userName + '】 用户?')){
			//确定，要删除
			location.href = '${pageContext.request.contextPath}/DeleteUserEditServlet2?id=' + userId;
		}else{
			//不删除
		}
	}
	function ckAll(){
		//1.获取全选的标签
		var ckTag=document.getElementById('ckAllId');
		//状态
		var ckstate=ckTag.checked;
		
		//2.遍历全选下面的复选框
		var ckBookId=document.getElementsByName('ckName');
		//alert(ckBookId.length);
		for(var i=0;i<ckBookId.length;i++){
			ckBookId[i].checked=ckstate;
			
		}
		
	}
	//批量删除
	function batchDelete(){
		//BatchDeleteBookSevlet?ids=1001,1002,1003
		//BatchDeleteBookSevlet?ids=1001-1002-1003【如果UUID有杠，就不能用这种方式】
		//1.拼接ids
		//遍历全选下面的复选框
		var ckBookIds = document.getElementsByName('ckName');
		var ids = '';
		for(var i=0;i<ckBookIds.length;i++){
			if(ckBookIds[i].checked == true){
				ids += ckBookIds[i].value + ',';
			}
			
		}
		
		//2.去除最后一个逗号
		ids = ids.substring(0,ids.length - 1);
		//alert(ids);
		
		if(confirm('是否要删除选中的用户?')){
			//确定，要删除
			location.href = '${pageContext.request.contextPath}/BatchDeleteUserServlet?ids=' + ids;
		}else{
			//不删除
		}
		//3.访问servlet
		
	}
	function setProductCategory(t) {
		var category = document.getElementById("category");

		var ops = category.options;
		for ( var i = 0; i < ops.length; i++) {

			if (ops[i].value == t) {
				ops[i].selected = true;
				return;
			}
		}

	}
	
</script>
</HEAD>
<body >
	<br>
	<form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/FindUserServlet2"
		method="post">
		
		<table cellSpacing="1" cellPadding="0" width="100%" align="center"
			bgColor="#f5fafe" border="0">
			<TBODY>
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>查
							询 条 件</strong>
					</td>
				</tr>
				
					<tr>
					<td>
						<table cellpadding="0" cellspacing="0" border="0" width="100%">
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									用户编号</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="id" size="15" value="${user.id}" id="Form1_userName" class="bg" />
								</td>
								
							<tr>
								<td height="22" align="center" bgColor="#f5fafe" class="ta_01">
									用户昵称：</td>
								<td class="ta_01" bgColor="#ffffff"><input type="text"
									name="name" size="15" value="" id="Form1_userName" class="bg" /><%-- ${book.name} --%>
								</td>
								

							<tr>
								<td width="100" height="22" align="center" bgColor="#f5fafe"
									class="ta_01"></td>
								<td class="ta_01" bgColor="#ffffff"><font face="宋体"
									color="red"> &nbsp;</font>
								</td>
								<td align="right" bgColor="#ffffff" class="ta_01"><br>
									<br></td>
								<td align="right" bgColor="#ffffff" class="ta_01">
									<button type="submit" id="search" name="search"
										value="&#26597;&#35810;" class="button_view">
										&#26597;&#35810;</button> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <input
									type="reset" name="reset" value="&#37325;&#32622;"
									class="button_view" />
								</td>
							</tr>
						</table>
					</td>

				</tr>
			
				
				<tr>
					<td class="ta_01" align="center" bgColor="#afd1f3"><strong>用户列表</strong>
					</TD>
				</tr>
				<tr>
					<td class="ta_01" align="right">
						<button type="button" id="add" name="add" value="&#28155;&#21152;"
							class="button_add" onclick="batchDelete()">批量删除
						</button>
						
					</td>
				</tr>
				<tr>
				
					<td class="ta_01" align="center" bgColor="#f5fafe">
						<table cellspacing="0" cellpadding="1" rules="all"
							bordercolor="gray" border="1" id="DataGrid1"
							style="BORDER-RIGHT: gray 1px solid; BORDER-TOP: gray 1px solid; BORDER-LEFT: gray 1px solid; WIDTH: 100%; WORD-BREAK: break-all; BORDER-BOTTOM: gray 1px solid; BORDER-COLLAPSE: collapse; BACKGROUND-COLOR: #f5fafe; WORD-WRAP: break-word">
							<tr
								style="FONT-WEIGHT: bold; FONT-SIZE: 12pt; HEIGHT: 25px; BACKGROUND-COLOR: #afd1f3">
								<td align="center" width="5%"><input type="checkbox" onclick="ckAll()" id="ckAllId">全选/不全选</td>
								<td align="center" width="24%">用户编号</td>
								<td align="center" width="18%">用户昵称</td>
								<td align="center" width="9%">电话</td>
								<td align="center" width="9%">地址</td>
								<td align="center" width="9%">email</td>
								
								<td width="8%" align="center">注销用户</td>
							</tr>

							<c:forEach items="${pageResult.list}" var="user">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="5%"><input type="checkbox" name="ckName"  value="${book.id}"></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="23">${user.id }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%">${user.username }</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">${user.phone }</td>
										<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">${user.address }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">${user.email }</td>
									
									
									

									<td align="center" style="HEIGHT: 22px" width="7%">
									<%-- <a href="${pageContext.request.contextPath}/DeleteBookEditServlet?id=${book.id}">
											<img
											src="${pageContext.request.contextPath}/admin/images/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a> --%>
									<a href="javascript:deleteUser('${user.username}','${user.id}')">
											<img
											src="${pageContext.request.contextPath}/admin/images/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a>
									</td>
								</tr>
							</c:forEach>
				
							
							<tr>
									<td colspan="8" align="right">
										当前页&nbsp; ${pageResult.pageCurrent}/${pageResult.totalPage} &nbsp;总条数${pageResult.totalCount}&nbsp;&nbsp;&nbsp;
									</td>
								</tr>
								<tr>
									<td colspan="8" align="center">
										<c:if test="${pageResult.pageCurrent - 1 != 0}">
											<a href="${pageContext.request.contextPath}/UserListServlet?page=${pageResult.pageCurrent - 1}">上一页</a>
										</c:if>

										<c:forEach begin="1" end="${pageResult.totalPage}" var="p">
											<a href="${pageContext.request.contextPath}/UserListServlet?page=${p}">${p}</a>
											&nbsp;
										</c:forEach>
										
										<c:if test="${pageResult.pageCurrent + 1 <= pageResult.totalPage}">
											<a href="${pageContext.request.contextPath}/UserListServlet?page=${pageResult.pageCurrent + 1}">下一页</a>
										</c:if>
									</td>
								</tr>	
						
						</table>
					</td>
				</tr>
			</TBODY>
		</table>
	</form>
</body>
</HTML>

