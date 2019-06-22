package com.swm.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;

/**
 * Servlet implementation class BookListService
 */
@WebServlet("/BookListServlet")
public class BookListServlet extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String  page=request.getParameter("page");
		if(page==null||"".equals(page)){
			page="1";
		}
		//创建service
		IBookService bookListService=new BookServiceImpl();
		PageBean<Book> pageResult=bookListService.findBookByPage(Integer.parseInt(page));
		//发送request请求，设置
		request.setAttribute("pageResult", pageResult);
		request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
	}

	

}
