package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IBookDao;
import com.swm.dao.IMessegeDao;
import com.swm.dao.IUserDao;
import com.swm.dao.impl.BookDaoImpl;
import com.swm.dao.impl.MessegeDaoImpl;
import com.swm.dao.impl.UserDaoImpl;
import com.swm.model.Messege;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.form.FindMessegeForm;
import com.swm.form.FindUserForm;
import com.swm.service.IMessegeService;
import com.swm.service.IUserService;

public class MessegeServiceImpl implements IMessegeService{
	IMessegeDao messegeDao=new MessegeDaoImpl();
	@Override
	public void register(Messege messege) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Messege login(String username, String password) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Messege login(Messege user) throws UserException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public boolean userExist(String username) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public PageBean<Messege> findUserByPage(int page) {
		try {
			messegeDao.findUserByPage(page);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public List<Messege> findUser(FindMessegeForm form) {
		try {
			return messegeDao.findUser(form);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Messege> FindAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserById(String id) {
		// TODO Auto-generated method stub
		
	}

	
}
