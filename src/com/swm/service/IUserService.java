package com.swm.service;

import com.swm.model.Adminer;
import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.model.User;

import java.util.List;

import com.swm.exception.UserException;
import com.swm.form.FindUserForm;

public interface IUserService {
	/**
	 * 注册业务
	 * @param user
	 */
	public void register(User user);
	
	/**
	 * 登录业务
	 * @param username
	 * @param password
	 * @return
	 */
	public User login(String username,String password);
	
	/**
	 * 登录业务2
	 * @param username
	 * @param password
	 * @return
	 */
	public User login(User user)throws UserException;
	
	/**
	 * 判断用户是否存在
	 * @param username
	 * @return
	 */
	public boolean userExist(String username);
	/**
	 * 显示信息
	 * @param username
	 * @return
	 */
	public PageBean<User> findUserByPage(int page);

	public List<User> findUser(FindUserForm form);

	public void deleteUserByIds(String ids);

	public List<User> FindAllUsers();

	public void deleteUserById(String id);

	

	
}
