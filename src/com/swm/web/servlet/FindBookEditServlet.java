package com.swm.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.model.Book;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;

@WebServlet("/FindBookEditServlet")
public class FindBookEditServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取id
		String id =request.getParameter("id");
		IBookService bookService=new BookServiceImpl();
		Book book=bookService.findBookById(id);
		request.setAttribute("book",book);
		request.getRequestDispatcher("/admin/products/edit.jsp").forward(request, response);
		
	}

}
