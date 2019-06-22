package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IBookDao;
import com.swm.dao.IOrderitemDao;
import com.swm.dao.IUserDao;
import com.swm.dao.impl.BookDaoImpl;
import com.swm.dao.impl.OrderitemDaoImpl;
import com.swm.dao.impl.UserDaoImpl;
import com.swm.model.Order;
import com.swm.model.Orderitems;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.form.FindUserForm;
import com.swm.service.IOrderService;
import com.swm.service.IOrderitemService;
import com.swm.service.IUserService;

public class OrderitemServiceImpl implements IOrderitemService{
	IOrderitemDao dao=new OrderitemDaoImpl();
	@Override
	public Orderitems login(Orderitems orderitems) throws UserException {
		return null;
	}

	@Override
	public boolean userExist(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public PageBean<Orderitems> findUserByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orderitems> findUser(FindUserForm form) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Orderitems> FindAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserById(String id) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void add(Orderitems orderitems) throws UserException {
		try {
			dao.insert(orderitems);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<Orderitems> FindAllBooks() {
		try {
			return dao.findAllbooks();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	
}
