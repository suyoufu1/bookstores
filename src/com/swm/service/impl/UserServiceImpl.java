package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IBookDao;
import com.swm.dao.IUserDao;
import com.swm.dao.impl.BookDaoImpl;
import com.swm.dao.impl.UserDaoImpl;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.exception.UserException;
import com.swm.form.FindUserForm;
import com.swm.service.IUserService;

public class UserServiceImpl implements IUserService{

	//service中调用dao
	private IUserDao userDao = new UserDaoImpl();
	
	@Override
	public void register(User user) {
		// TODO Auto-generated method stub
		userDao.insert(user);
	}

	@Override
	public User login(String username, String password) {
		// TODO Auto-generated method stub
		return userDao.findUser(username, password);
	}

	@Override
	public User login(User user)throws UserException {
		// TODO Auto-generated method stub
		User u = userDao.findUser(user.getUsername(), user.getPassword());
		return u;
		/*if(u != null){
			return u;
		}else{
			throw new UserException("用户名或者密码不正确");
		}
		*/
	}

	@Override
	public boolean userExist(String username) {
		// TODO Auto-generated method stub
		User user = userDao.findUser(username);
		return user != null;
	}

	@Override
	public PageBean<User> findUserByPage(int page) {
		IUserDao userListDao=new UserDaoImpl();
		try {
			return userListDao.findUserByPage(page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
		
	}
	
	@Override
	public List<User> findUser(FindUserForm form) {
		try {
			return userDao.findUser(form);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) {
		try {
			userDao.deleteUserByIds(ids);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public List<User> FindAllUsers() {
		//IBookDao bookListDao=new BookDaoImpl();
		try {
			return userDao.findAllusers();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteUserById(String id) {
		try {
			userDao.deleteUser(id);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
