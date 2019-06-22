package com.swm.dao.impl;


import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.dao.IOrderDao;
import com.swm.dao.IUserDao;
import com.swm.form.FindUserForm;
import com.swm.model.Order;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.utils.C3P0Utils;

public class OrderDaoImpl implements IOrderDao {

	@Override
	public void insert(Order order) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Order findUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean<Order> findUserByPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Order> findUser(FindUserForm form) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> findAllusers() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(String id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	
}
