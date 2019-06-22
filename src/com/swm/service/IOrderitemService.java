package com.swm.service;

import com.swm.model.Book;
import com.swm.model.Order;
import com.swm.model.Orderitems;
import com.swm.model.PageBean;
import com.swm.model.User;

import java.util.List;

import com.swm.exception.UserException;
import com.swm.form.FindUserForm;

public interface IOrderitemService {

	/**
	 * 登录业务2
	 * @param username
	 * @param password
	 * @return
	 */
	public Orderitems login(Orderitems orderitems)throws UserException;
	
	public void add(Orderitems orderitems)throws UserException;
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
	public PageBean<Orderitems> findUserByPage(int page);

	public List<Orderitems> findUser(FindUserForm form);

	public void deleteUserByIds(String ids);

	public List<Orderitems> FindAllUsers();

	public void deleteUserById(String id);

	public List<Orderitems> FindAllBooks();

	
}
