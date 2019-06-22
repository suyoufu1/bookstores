package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IBookDao;
import com.swm.dao.impl.BookDaoImpl;
import com.swm.form.FindBookForm;
import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.service.IBookService;

public class BookServiceImpl implements IBookService {
	IBookDao bookListDao=new BookDaoImpl();
	@Override
	public List<Book> FindAllBooks() {
		//IBookDao bookListDao=new BookDaoImpl();
		try {
			return bookListDao.findAllbooks();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public void addBook(Book book) throws SQLException {
		IBookDao addBookDao=new BookDaoImpl();
		addBookDao.addBook(book);
	}
	@Override
	public Book findBookById(String id) {
		try {
			return bookListDao.findBookById(id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public void updateBook(Book book) throws SQLException {
		bookListDao.updateBook(book);
		
	}
	@Override
	public void deleteBookById(String id) {
		try {
			bookListDao.deleteBook(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@Override
	public void deleteBookByIds(String ids) {
		try {
			bookListDao.deleteBookByIds(ids);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	@Override
	public List<Book> findBook(FindBookForm form) {
		try {
			return bookListDao.findBook(form);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	@Override
	public PageBean<Book> findBookByPage(int page) {
		try {
			return bookListDao.findBookByPage(page);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

}
