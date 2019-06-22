package com.swm.service;

import com.swm.model.Book;
import com.swm.model.Order;
import com.swm.model.PageBean;
import com.swm.model.User;

import java.util.List;

import com.swm.exception.UserException;
import com.swm.form.FindUserForm;

public interface IOrderService {

	/**
	 * 登录业务2
	 * @param username
	 * @param password
	 * @return
	 */
	public Order login(Order order)throws UserException;
	
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
	public PageBean<Order> findUserByPage(int page);

	public List<Order> findUser(FindUserForm form);

	public void deleteUserByIds(String ids);

	public List<Order> FindAllUsers();

	public void deleteUserById(String id);

	
}
