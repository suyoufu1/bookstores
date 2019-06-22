package com.swm.web.servlet;

import java.io.IOException;
/**
 * 06.登录注册注销案例-提示注册用户已经存在
 */
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

import com.swm.model.Adminer;
import com.swm.model.User;
import com.swm.form.AdminForm;
import com.swm.form.UserForm;
import com.swm.service.IAdminerService;
import com.swm.service.IUserService;
import com.swm.service.impl.AdminerServiceImpl;
import com.swm.service.impl.UserServiceImpl;

@WebServlet("/RegisterAdminServlet")
public class RegisterAdminServlet extends HttpServlet {
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1.判断jsp提交的表单参数是否都合法
		request.setCharacterEncoding("utf-8");
		AdminForm uf = new AdminForm();
		try {
			//把请求参数封装成表单校验对象
			BeanUtils.populate(uf, request.getParameterMap());
			//进行检验
			if(!uf.validate()){//不合法
				System.out.println(uf.getErr());
				//回到注册页面
				request.setAttribute("uf",uf);
				request.getRequestDispatcher("/regisetAdmin.jsp").forward(request, response);
				return;
			}
			
		} catch (Exception  e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		
		//2.把请求参数封装成模型
		Adminer adminer = new Adminer();
		try {
			//ConvertUtils.register(new MyDateConverter(), Date.class);
			
			BeanUtils.populate(adminer, request.getParameterMap());
			System.out.println("请求参数:" + adminer);
			
			//2.调用service
			IAdminerService adminerService = new AdminerServiceImpl();
			
			
			//注册
			adminerService.register(adminer);
			
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
