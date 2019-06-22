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

import com.swm.model.Book;
import com.swm.service.IBookService;
import com.swm.service.impl.BookServiceImpl;



/**
 * 购物车实现方案：
 * 	1.把商品书存在session中
 *  问题：1.浏览器重新打开，以前数据不在了【把书的id放在cookie】
 *        2.当服务重启后，以前数据也不在【1.把书的id放在cookie,2.把session保存起来】
 * @author gyf
 *
 */
@WebServlet("/BuyBookServlet")
public class BuyBookServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setHeader("content-type", "text/html;charset=utf-8");
		
		//用户买书-书放在购物车【掌握】
		
		//1.获取书的ID
		String bookId = request.getParameter("id");
		IBookService bookService=new BookServiceImpl();
		//2.通过书id找到这本书
		Book book = bookService.findBookById(bookId);
		
		//3.把这个书放在购物车List<Book> cart
		//3.1先从session取出购物车
		List<Book> cart =  (List<Book>)request.getSession().getAttribute("cart");
		
		//3.2如果没有购物车对象，就创建一个
		if(cart == null){
			System.out.println("当前session没有购物车");
			cart = new ArrayList<Book>();
		}else{
			System.out.println("当前session有购物车");
		}
		
		cart.add(book);
		
		//4.把这个list放在session中
		request.getSession().setAttribute("cart", cart);
		
		request.getRequestDispatcher("/shopcar.jsp").forward(request, response);
		/*//5.显示购物车的信息
		PrintWriter writer = response.getWriter();
		writer.write("购物车信息:");
		for(Book b : cart){
			writer.write("<br>" + b.getName());
		}
		*/
		
		
		
	}
}
