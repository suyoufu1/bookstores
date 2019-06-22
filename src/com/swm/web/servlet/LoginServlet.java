package com.swm.web.servlet;

import java.io.IOException;
import java.lang.reflect.InvocationTargetException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.xml.ws.RequestWrapper;

import org.apache.commons.beanutils.BeanUtils;

import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.service.IUserService;
import com.swm.service.impl.UserServiceImpl;

/**
 * 自定义异常：
 * 	掌握可以在一个业务方法抛出异常UserException
 *  掌握在一个jsp页面，如何获取失败信息
 *  	思路：往request对象存数据，然后转发到一个jsp页面，jsp页面通过el表达式取出作用域的数据
 * @author gyf
 *
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setHeader("content-type", "text/html;charset=utf-8");
		//1.获取请求参数
		User formUser = new User();
		try {
			BeanUtils.populate(formUser, request.getParameterMap());
			request.getSession().setAttribute("name", formUser.getUsername());
			
			//2.调用业务方法(login)
			IUserService userService = new UserServiceImpl();
			
			try {
				User dbUser = userService.login(formUser);
				
				//登录用户存储到session
				request.getSession().setAttribute("user", dbUser);
				
				//进入后台页面
				response.sendRedirect(request.getContextPath() + "/index2.jsp");
			} catch (UserException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//往request存数据
				request.setAttribute("message", e.getMessage());
				
				//登录失败,回到登录页面【转发】
				request.getRequestDispatcher("/index2.jsp").forward(request, response);
				//response.sendRedirect(request.getContextPath()+ "/index.jsp");
				//request.getRequestDispatcher("/admin/login/home.jsp").forward(request, response);
			}
			
			
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}

}
