package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindUserForm;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IUserDao {

	/**
	 * 插入数据
	 * @param user
	 */
	public void insert(User user);
	
	/**
	 * 通过用户名和密码查找用户
	 * @param username
	 * @param password
	 * @return
	 */
	public User findUser(String username,String password);
	
	/**
	 * 通过用户名查询用户
	 * @param username
	 * @return
	 */
	public User findUser(String username);



	PageBean<User> findUserByPage(int page) throws Exception;
	
	//查看用户信息
	public List<User> findUser(FindUserForm form)throws SQLException;

	public void deleteUserByIds(String ids)throws SQLException;

	public List<User> findAllusers() throws SQLException;

	public void deleteUser(String id)throws SQLException;
}
