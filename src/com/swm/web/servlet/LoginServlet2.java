package com.swm.web.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RequestWrapper;

import com.swm.model.User;
import com.swm.service.IUserService;
import com.swm.service.impl.UserServiceImpl;


@WebServlet("/LoginServlet2")
public class LoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("content-type", "text/html;charset=utf-8");
		//1.获取请求参数
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		//2.调用业务方法(login)
		IUserService userService = new UserServiceImpl();
		User user = userService.login(username, password);
		
		//3.根据结果响应客户
		if(user != null){//登录成功
			//登录用户存储到session
			request.getSession().setAttribute("user", user);
			
			//进入后台页面
			response.sendRedirect("/index.jsp");
		}else{//登录失败
			response.getWriter().write("用户名或者密码不正确");
			response.sendRedirect("/loginlead.jsp");
		}
	}

}
