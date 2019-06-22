package com.swm.dao.impl;


import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.dao.IMessegeDao;
import com.swm.dao.IUserDao;
import com.swm.form.FindMessegeForm;
import com.swm.form.FindUserForm;
import com.swm.model.Messege;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.utils.C3P0Utils;

public class MessegeDaoImpl implements IMessegeDao {

	@Override
	public void insert(Messege messege) {
		
		
	}

	@Override
	public Messege findUser(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	public Messege findUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean<Messege> findUserByPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Messege> findUser(FindUserForm form) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Messege> findAllusers() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(String id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Messege> findUser(FindMessegeForm form) {
		// TODO Auto-generated method stub
		return null;
	}

}
