package com.swm.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;

@WebServlet("/BatchDeleteBookServlet")
public class BatchDeleteBookServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取id
		String ids =request.getParameter("ids");
		IBookService bookService=new BookServiceImpl();
		bookService.deleteBookByIds(ids);
		PageBean<Book> pageResult=bookService.findBookByPage(1);
		request.setAttribute("pageResult", pageResult);
		request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
		
		
	}

}
