package com.swm.dao;

import java.sql.SQLException;
import java.util.List;

import com.swm.form.FindAdminerForm;
import com.swm.model.Adminer;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IAdminerDao {

	public void insert(Adminer adminer);

	public Adminer findUser(String name, String password);

	public List<Adminer> findUser(FindAdminerForm form) throws SQLException;

	public PageBean<Adminer> findUserByPage(int page)throws Exception;

	public void deleteUserByIds(String ids) throws Exception;
	public Adminer find(String name,String password);
	
}
