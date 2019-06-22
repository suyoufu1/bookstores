package com.swm.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.model.Book;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;

/**
 * Servlet implementation class BookListService
 */
//备份
@WebServlet("/BookListServlet2")
public class BookListServlet2 extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//创建service
		IBookService bookListService=new BookServiceImpl();
		List<Book> books=bookListService.FindAllBooks();
		//发送request请求，设置
		request.setAttribute("books", books);
		request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
	}

	

}
