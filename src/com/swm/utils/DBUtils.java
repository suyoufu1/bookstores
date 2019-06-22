package com.swm.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
import java.util.ResourceBundle;

public class DBUtils {

	private static String url = null;
	private static String user = null;
	private static String password = null;
	private static String driverClass = null;
	static{
		try {
			//从db.properites取数据赋值给静态变量
			
			/**
			 * 以前使用Properties类来读.properties文件的内容
			 *
			 * 使用ResourceBundle 资源文件夹
			 * 
			 */
			ResourceBundle rb = ResourceBundle.getBundle("db");//不需要写后缀名
			url = rb.getString("url");
			user = rb.getString("user");
			password = rb.getString("password");
			driverClass = rb.getString("driverClass");
			System.out.println("从db.properites取数据:");
			System.out.println("url:" + url);
			System.out.println("user:" + user);
			System.out.println("password:" + password);
			System.out.println("driverClass:" + driverClass);
			
			
			Class.forName(driverClass);//加载驱动
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public static Connection getConnection() throws SQLException{
		return DriverManager.getConnection(url, user, password);
	}
	
	public static void close(ResultSet rs,Statement stmt,Connection conn){
		
		if(rs != null){
			try {
				rs.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		if(stmt !=null){
			try {
				stmt.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(conn !=null){
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
