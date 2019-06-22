package com.swm.web.servlet;

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
import com.swm.service.IUserService;
import com.swm.service.impl.UserServiceImpl;
/**
 * 注意点：
 * 表单提交的时间是字符串
 * 使用Beanutis工具时候，需要注册一个转换器,把字符串转成Date对象
 * @author gyf
 *
 */

@WebServlet("/RegisterServlet2")
public class RegisterServlet2 extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.把请求参数封装成模型
		User user = new User();
		try {
			//注册日期转换器
			/*ConvertUtils.register(new Converter() {
				
				@Override
				public Object convert(Class type, Object value) {
					// TODO Auto-generated method stub
					String str = (String) value;
					//把字符串转成Date类型
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					try {
						return sdf.parse(str);
					} catch (ParseException e) {
						e.printStackTrace();
					}
					//System.out.println("value:" + value);
					return null;
				}
			}, Date.class);*/
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
			response.addHeader("Refresh", "3;url="+request.getContextPath()+"/loginAdminer.jsp");
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	
	}

}
