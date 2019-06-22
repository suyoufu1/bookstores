package com.swm.web.servlet;

/**
 * 04.登录注册注销案例-表单的后台校验讲解
 * 05.登录注册注销案例-注册表单数据的回显讲解
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
/**
 * 注意点：
 * 表单提交的时间是字符串
 * 使用Beanutis工具时候，需要注册一个转换器,把字符串转成Date对象
 * @author gyf
 *
 */

@WebServlet("/RegisterServlet3")
public class RegisterServlet3 extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//判断jsp提交的表单参数是否都合法
		/**
		 * 1.用户名不能为空，用户名长度大于5，小于15
		 * 2.密码不能空，密码长度长度大于6，小于9
		 * 3.确认密码要与前面的密码一至
		 * 4.邮箱的格式要正确""q.com
		 * 5.日期的格式也要正确2018-01-12
		 * 
		 * 思路：写一个类，专门来实现表单数据校验
		 */
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
			
			/*//判断集合有没数据，如果有数据就不合法
			if(uf.getErr().size() > 0){
				System.out.println(uf.getErr());
				return;
			}*/
		} catch (IllegalAccessException | InvocationTargetException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		//1.把请求参数封装成模型
		User user = new User();
		try {
			//ConvertUtils.register(new MyDateConverter(), Date.class);
			
			BeanUtils.populate(user, request.getParameterMap());
			System.out.println("请求参数:" + user);
			
			//2.调用service
			IUserService userService = new UserServiceImpl();
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
