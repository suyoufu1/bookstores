package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindMessegeForm;
import com.swm.form.FindUserForm;
import com.swm.model.Messege;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IMessegeDao {

	/**
	 * 插入数据
	 * @param user
	 */
	public void insert(Messege messege);
	
	/**
	 * 通过用户名和密码查找用户
	 * @param username
	 * @param password
	 * @return
	 */
	public Messege findUser(String username,String password);
	
	/**
	 * 通过用户名查询用户
	 * @param form
	 * @return
	 */
	public List<Messege> findUser(FindMessegeForm form);



	PageBean<Messege> findUserByPage(int page) throws Exception;
	
	//查看用户信息
	public List<Messege> findUser(FindUserForm form)throws SQLException;

	public void deleteUserByIds(String ids)throws SQLException;

	public List<Messege> findAllusers() throws SQLException;

	public void deleteUser(String id)throws SQLException;
}
