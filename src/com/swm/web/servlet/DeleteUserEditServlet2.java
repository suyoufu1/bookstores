package com.swm.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.dao.IUserDao;
import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.service.IBookService;
import com.swm.service.IUserService;
import com.swm.service.impl.BookServiceImpl;
import com.swm.service.impl.UserServiceImpl;

@WebServlet("/DeleteUserEditServlet2")
public class DeleteUserEditServlet2 extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		//获取id
		String id =request.getParameter("id");
		IUserService userService=new UserServiceImpl();
		userService.deleteUserById(id);
		PageBean<User> pageResult=userService.findUserByPage(1);
		request.setAttribute("pageResult", pageResult);
		request.getRequestDispatcher("/admin/products/listuser.jsp").forward(request, response);
		
		
	}

}
