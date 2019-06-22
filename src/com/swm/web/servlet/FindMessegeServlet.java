package com.swm.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.beanutils.BeanUtils;

import com.swm.form.FindBookForm;
import com.swm.form.FindMessegeForm;
import com.swm.form.FindUserForm;
import com.swm.model.Book;
import com.swm.model.Messege;
import com.swm.model.User;
import com.swm.service.IBookService;
import com.swm.service.IMessegeService;
import com.swm.service.IUserService;
import com.swm.service.impl.BookServiceImpl;
import com.swm.service.impl.MessegeServiceImpl;
import com.swm.service.impl.UserServiceImpl;
@WebServlet("/FindMessegeServlet")
//查询书籍
public class FindMessegeServlet extends HttpServlet {
	

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");

			//接受参数
		    FindMessegeForm form=new FindMessegeForm();
		    try {
				BeanUtils.populate(form,request.getParameterMap());
				IMessegeService messegeService = new MessegeServiceImpl();
				List<Messege> messege =messegeService.findUser(form);
				
				//3.返回list列表页面
				//重新获取 book数据
				
				
				request.setAttribute("messege", messege);
				request.getRequestDispatcher("/admin/products/listMessege.jsp").forward(request, response);
			} catch (Exception e) {
				
			}
			/*String id=request.getParameter("id");
			String name=request.getParameter("name");
			String category=request.getParameter("category");
			String minprice=request.getParameter("minprice");
			String maxprice=request.getParameter("maxprice");*/
			
			
		
				
				
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
