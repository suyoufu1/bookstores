package com.swm.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
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

/**
 * Servlet implementation class UpdateBookServlet
 */
@WebServlet("/UpdateBookServlet")
public class UpdateBookServlet extends HttpServlet {
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//设置请求的编码类型来解决post请求的乱码问题
		request.setCharacterEncoding("utf-8");
		Book book=new Book();
		try {
			BeanUtils.populate(book,request.getParameterMap());
			System.out.println(book);
			IBookService bookService=new BookServiceImpl();
			
			bookService.updateBook(book);
			
			//更新数据
			PageBean<Book> pageBean=new PageBean<Book>();
			PageBean<Book> pageResult=bookService.findBookByPage(1);
			request.setAttribute("pageResult", pageResult);
			request.getRequestDispatcher("/admin/products/list.jsp").forward(request, response);
		} catch (Exception  e) {
			e.printStackTrace();
		}
	}

}
