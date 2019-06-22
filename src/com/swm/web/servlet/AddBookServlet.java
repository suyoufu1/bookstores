package com.swm.web.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;
import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;
@WebServlet("/AddBookServlet")
public class AddBookServlet extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//1.把表单的数据封装成模型
		Book book = new Book();
		try {
			BeanUtils.populate(book, request.getParameterMap());
			System.out.println(book);
			
			//2.调用service
			BookServiceImpl bookService = new BookServiceImpl();
			bookService.addBook(book);
			
			//3.返回list列表页面
			//重新获取 book数据
			//List<Book> books = bookService.FindAllBooks();
			PageBean<Book> pageResult=bookService.findBookByPage(1);
			request.setAttribute("pageResult", pageResult);
			request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		} 
				
				
		/*//将表单分装成模型
		Book book=new Book();
		try {
			BeanUtils.populate(book, request.getParameterMap());
			System.out.println(book);
			//调用service
			IBookService bookService=new BookServiceImpl();
			bookService.addBook(book);
			//将添加的数据库数据显示在list界面
			//调用service中的findBook方法
			List<Book> books=bookService.FindAllBooks();
			//发送request请求，设置
			request.setAttribute("books", books);
			request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}*/
	}

}
