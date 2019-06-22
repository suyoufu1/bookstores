package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindBookForm;
import com.swm.model.Book;
import com.swm.model.PageBean;

public interface IBookDao {
	//public String name of age ;
	public List<Book> findAllbooks() throws SQLException;
	void addBook(Book book) throws SQLException;
	public Book findBookById(String id)throws SQLException;
	public void updateBook(Book book)throws SQLException;
	public void deleteBook(String id)throws SQLException;
	public void deleteBookByIds(String ids)throws SQLException;
	public List<Book> findBook(FindBookForm form)throws SQLException;
	
	PageBean<Book> findBookByPage(int page) throws SQLException;
}
