package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindUserForm;
import com.swm.model.Order;
import com.swm.model.Orderitems;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IOrderitemDao {

	/**
	 * 插入数据
	 * @param user
	 * @throws SQLException 
	 */
	public void insert(Orderitems orderitems) throws SQLException;
	
	
	/**
	 * 通过用户名查询用户
	 * @param username
	 * @return
	 */
	public Orderitems findUser(String username);



	PageBean<Orderitems> findUserByPage(int page) throws Exception;
	
	//查看用户信息
	public List<Orderitems> findUser(FindUserForm form)throws SQLException;

	public void deleteUserByIds(String ids)throws SQLException;

	public List<Orderitems> findAllusers() throws SQLException;

	public void deleteUser(String id)throws SQLException;


	public List<Orderitems> findAllbooks()throws SQLException;
}
