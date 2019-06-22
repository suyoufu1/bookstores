package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindUserForm;
import com.swm.model.Order;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IOrderDao {

	/**
	 * 插入数据
	 * @param user
	 */
	public void insert(Order order);
	
	
	/**
	 * 通过用户名查询用户
	 * @param username
	 * @return
	 */
	public Order findUser(String username);



	PageBean<Order> findUserByPage(int page) throws Exception;
	
	//查看用户信息
	public List<Order> findUser(FindUserForm form)throws SQLException;

	public void deleteUserByIds(String ids)throws SQLException;

	public List<Order> findAllusers() throws SQLException;

	public void deleteUser(String id)throws SQLException;
}
