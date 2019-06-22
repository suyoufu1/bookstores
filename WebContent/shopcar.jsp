<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>我的购物车</title>
<link href="css/style.css" type="text/css" rel="stylesheet" />
<script src="js/jquery-1.7.min.js" type="text/javascript"></script>
<script src="js/common.js"  type="text/javascript"></script>

</head>
<body class="index">


<div class="w1200">
	<div class="position"><a href="#">首页</a> > <a href="#">购物车</a></div>
   <form id="Form1" name="Form1"
		action="${pageContext.request.contextPath}/FindShopServlet"
		method="post">
    <div class="shopcar">
    	<div class="shop_lc"><span class="sp01">我的购物车</span><span class="sp02">填写提交信息表单</span><span class="sp03">在线支付</span></div>
      	<dl>
        	<dt><span>我的购物车</span></dt>
            <dd>
            	<table width="100%" cellpadding="0" cellspacing="0" border="0">
                  <tr class="tr_t">
                    <td width="4%"><input type="checkbox" checked="checked"/></td>
                    <td width="4%">全选</td>
                    <td width="35%">商品</td>
                    <td width="26%">单价</td>
                    <td width="6%">数量</td>
                    <td width="11%">操作</td>
                  </tr>
                <c:forEach items="${cart}" var="book">
								<tr onmouseover="this.style.backgroundColor = 'white'"
									onmouseout="this.style.backgroundColor = '#F5FAFE';">
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="5%"><input type="checkbox" name="ckName"  value="${book.id}"></td>
									
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="18%"><a href="main.jsp">${book.name }</a></td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">大唐仙医${book.price }</td>
									<td style="CURSOR: hand; HEIGHT: 22px" align="center"
										width="8%">26${book.pnum }</td>
									
									<td align="center" style="HEIGHT: 22px" width="7%">
										
											1
									</td>

									<td align="center" style="HEIGHT: 22px" width="7%">
									<%-- <a href="${pageContext.request.contextPath}/DeleteBookEditServlet?id=${book.id}">
											<img
											src="${pageContext.request.contextPath}/admin/images/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a> --%>
									<a href="javascript:deleteBook('${book.name}','${book.id}')">
											<img
											src="${pageContext.request.contextPath}/admin/images/i_del.gif"
											width="16" height="16" border="0" style="CURSOR: hand">
									</a>
									</td>
								</tr>
							</c:forEach>
                </table>
                <div class="clear"></div>
                
   		  </dd>
        </dl>
        <table width="100%" border="0" cellspacing="0" cellpadding="0" class="go_tb">
         <tr>
           <td width="20%"><a href="index2.jsp" class="go_buy">继续购物</a></td>
           <td width="63%">&nbsp;</td>
           <td width="17%" align="right"><a href="#" class="code">结 算</a></td>
         </tr>
        </table>
        <div class="clear"></div>
    </div>
    </form>
</div>


</body>
</html>
