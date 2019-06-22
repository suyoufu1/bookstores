package com.swm.web.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map.Entry;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.swm.form.DBUtils;
import com.swm.model.Book;



@WebServlet("/ShowAllBookServlet")
public class ShowAllBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=utf-8");
		
	
		
		//1.显示书的数据给浏览器
		PrintWriter writer = response.getWriter();
		writer.write("购买图书列表:");
		for(Entry<Integer, Book>  entry : DBUtils.getAllBooks().entrySet()){
			Book book = entry.getValue();
			String aStr = "<br><a href='http://localhost:8888" + request.getContextPath() + "/BuyBookServlet?id="+ book.getId() +"'>" + book.getName() + " - 点击购买</a>";
			writer.write(aStr);
		}
		
	
		
	}
}
