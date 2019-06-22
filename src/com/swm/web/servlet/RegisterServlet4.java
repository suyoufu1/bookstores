package com.swm.web.servlet;

/**
 * 06.登录注册注销案例-提示注册用户已经存在
 */
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.beanutils.BeanUtils;
import org.apache.commons.beanutils.ConvertUtils;
import org.apache.commons.beanutils.Converter;

import com.swm.model.User;
import com.swm.form.UserForm;
import com.swm.service.IUserService;
import com.swm.service.impl.UserServiceImpl;

@WebServlet("/RegisterServlet4")
public class RegisterServlet4 extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.判断jsp提交的表单参数是否都合法
		UserForm uf = new UserForm();
		try {
			//把请求参数封装成表单校验对象
			BeanUtils.populate(uf, request.getParameterMap());
			//进行检验
			if(!uf.validate()){//不合法
				System.out.println(uf.getErr());
				//回到注册页面
				request.setAttribute("uf",uf);
				request.getRequestDispatcher("/register.jsp").forward(request, response);
				return;
			}
			
		} catch (IllegalAccessException | InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		//2.把请求参数封装成模型
		User user = new User();
		try {
			//ConvertUtils.register(new MyDateConverter(), Date.class);
			
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println("请求参数:" + user);
			
			//2.调用service
			IUserService userService = new UserServiceImpl();
			//判断数据库是否有重复用户名
			if(userService.userExist(user.getUsername())){
				//回到注册页面，给个提示
				uf.getErr().put("username", "用户名已经存在");
				request.setAttribute("uf", uf);
				request.getRequestDispatcher("/register.jsp").forward(request, response);
				return;
			}
			
			//注册
			userService.register(user);
			
			//3.响应客户端
			response.setHeader("content-type", "text/html;charset=utf-8");
			response.getWriter().write("注册成功，3秒后进入登录页面");
			
			//重定向sendRedirect方法的时候，要加项目名称+request.getContextPath()
			//response.addHeader("Refresh", "3;url=login.jsp");
			response.addHeader("Refresh", "3;url="+request.getContextPath()+"/login.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
	}

}
