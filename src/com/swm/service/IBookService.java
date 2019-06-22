package com.swm.service;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindBookForm;
import com.swm.model.Book;
import com.swm.model.PageBean;

public interface IBookService {
	public List<Book> FindAllBooks();
	void addBook(Book book)throws SQLException;
	public Book findBookById(String id);
	public void updateBook(Book book)throws SQLException;
	public void deleteBookById(String id);
	public void deleteBookByIds(String ids);
	List<Book> findBook(FindBookForm form);
	public PageBean<Book> findBookByPage(int page);
}
