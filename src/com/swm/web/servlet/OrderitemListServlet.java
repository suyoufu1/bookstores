package com.swm.web.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.model.Orderitems;
import com.swm.model.PageBean;
import com.swm.service.IOrderitemService;
import com.swm.service.impl.OrderitemServiceImpl;

/**
 * Servlet implementation class BookListService
 */
@WebServlet("/OrderitemListServlet")
public class OrderitemListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  page=request.getParameter("page");
		if(page==null||"".equals(page)){
			page="1";
		}
		//创建service
		IOrderitemService orderitemService=new OrderitemServiceImpl();
		PageBean<Orderitems> pageResult=orderitemService.findUserByPage(Integer.parseInt(page));
		//发送request请求，设置
		request.setAttribute("pageResult", pageResult);
		request.getRequestDispatcher("/admin/products/listOderitem.jsp").forward(request, response);
	}

	

}
