package com.swm.service;

import com.swm.model.Book;
import com.swm.model.Messege;
import com.swm.model.PageBean;
import com.swm.model.User;

import java.util.List;

import com.swm.exception.UserException;
import com.swm.form.FindMessegeForm;
import com.swm.form.FindUserForm;

public interface IMessegeService {
	/**
	 * 注册业务
	 * @param user
	 */
	public void register(Messege messege);
	
	/**
	 * 登录业务
	 * @param username
	 * @param password
	 * @return
	 */
	public Messege login(String username,String password);
	
	/**
	 * 登录业务2
	 * @param username
	 * @param password
	 * @return
	 */
	public Messege login(Messege user)throws UserException;
	
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
	public PageBean<Messege> findUserByPage(int page);

	public List<Messege> findUser(FindMessegeForm form);

	public void deleteUserByIds(String ids);

	public List<Messege> FindAllUsers();

	public void deleteUserById(String id);

	
}
