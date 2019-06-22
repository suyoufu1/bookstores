package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IBookDao;
import com.swm.dao.IUserDao;
import com.swm.dao.impl.BookDaoImpl;
import com.swm.dao.impl.UserDaoImpl;
import com.swm.model.Order;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.form.FindUserForm;
import com.swm.service.IOrderService;
import com.swm.service.IUserService;

public class OrderServiceImpl implements IOrderService{

	@Override
	public Order login(Order order) throws UserException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean userExist(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public PageBean<Order> findUserByPage(int page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findUser(FindUserForm form) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> FindAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserById(String id) {
		// TODO Auto-generated method stub
		
	}

	
}
