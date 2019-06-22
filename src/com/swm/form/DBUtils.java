package com.swm.form;

import java.util.HashMap;
import java.util.Map;

import com.swm.model.Book;


/**
 * 公用的数据写在一个静态集合
 * @author gyf
 *
 */
public class DBUtils {

	private static Map<Integer,Book> books = new HashMap<Integer,Book>();
	
	//赋值一次的内容最好写在static代码块中
	static{
		books.put(1,new Book());
		books.put(2,new Book());
		books.put(3,new Book());
		books.put(4,new Book());
		books.put(5,new Book());
	}
	
	/**
	 * 返回所有书
	 * @return
	 */
	public static Map<Integer,Book> getAllBooks(){
		return books;
	}
	
	/**
	 * 通过id找到书
	 * @param id
	 * @return
	 */
	public static Book findBookById(Integer id){
		return books.get(id);
	}
}
