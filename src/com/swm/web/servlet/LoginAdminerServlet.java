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

import com.swm.model.Adminer;
import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.service.IAdminerService;
import com.swm.service.IUserService;
import com.swm.service.impl.AdminerServiceImpl;
import com.swm.service.impl.UserServiceImpl;

/**
 * 自定义异常：
 * 	掌握可以在一个业务方法抛出异常UserException
 *  掌握在一个jsp页面，如何获取失败信息
 *  	思路：往request对象存数据，然后转发到一个jsp页面，jsp页面通过el表达式取出作用域的数据
 * @author gyf
 *
 */
@WebServlet("/LoginAdminerServlet")
public class LoginAdminerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	/* (non-Javadoc)
	 * @see javax.servlet.http.HttpServlet#doPost(javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		//获取用户填写的登录用户名
		String name = request.getParameter("name");
		//获取用户填写的登录密码
		String password = request.getParameter("password");
		IAdminerService service = new AdminerServiceImpl();
		//用户登录
		Adminer user = service.loginUser(name, password);
		if(user==null){
		String message = String.format(
		"对不起，用户名或密码有误！！请重新登录！秒后为您自动跳到登录页面！！<meta http-equiv='refresh' content=';url=%s'", 
		request.getContextPath()+"/servlet/LoginAdminerServlet");
		request.setAttribute("message",message);
		//request.getRequestDispatcher("/message.jsp").forward(request, response);
		return;
		}
		//登录成功后，就将用户存储到session中
		request.getSession().setAttribute("user", user);
		String message = String.format(
		"恭喜：%s,登陆成功！本页将在秒后跳到首页！！<meta http-equiv='refresh' content=';url=%s'", 
		user.getName(),
		request.getContextPath()+"");
		request.setAttribute("message",message);
		request.getRequestDispatcher("/message.jsp").forward(request, response);
		
		response.setHeader("content-type", "text/html;charset=utf-8");
		
		response.sendRedirect(request.getContextPath() + "/admin/login/home.jsp");
		//1.获取请求参数
		Adminer formAdminer = new Adminer();
		try {
			BeanUtils.populate(formAdminer, request.getParameterMap());
			//2.调用业务方法(login)
			IAdminerService adminerService = new AdminerServiceImpl();
			
			
			try {
				Adminer dbAdminer;
			
				dbAdminer = adminerService.login(formAdminer);
				//登录用户存储到session
				request.getSession().setAttribute("adminer", dbAdminer);
				
				//进入后台页面
				response.sendRedirect(request.getContextPath() + "/admin/login/home.jsp");
		
				
				
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
				//往request存数据
				request.setAttribute("message", e.getMessage());
				//登录失败,回到登录页面【转发】
				request.getRequestDispatcher("/login.jsp").forward(request, response);
				//response.sendRedirect(request.getContextPath() + "/admin/login/home.jsp");
				//request.getRequestDispatcher("/admin/login/home.jsp").forward(request, response);
			}
			
			
		} catch (IllegalAccessException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	
	}
}


