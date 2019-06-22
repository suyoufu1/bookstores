package com.swm.service.impl;

import java.sql.SQLException;
import java.util.List;

import com.swm.dao.IAdminerDao;
import com.swm.dao.IUserDao;
import com.swm.dao.impl.AdminerDaoImp;
import com.swm.dao.impl.UserDaoImpl;
import com.swm.exception.UserException;
import com.swm.form.FindAdminerForm;
import com.swm.model.Adminer;
import com.swm.model.PageBean;
import com.swm.service.IAdminerService;

public class AdminerServiceImpl implements IAdminerService{
	IAdminerDao adminerDao=new AdminerDaoImp();
	public void register(Adminer adminer) {
		adminerDao.insert(adminer);
	}

	@Override
	public Adminer login(Adminer formAdminer) throws Exception {
		Adminer u = adminerDao.findUser(formAdminer.getName(), formAdminer.getPassword());
		if(u != null){
			return u;
		}else{
			throw new UserException("用户名和密码不正确");
		}
	}
	
	@Override
	public List<Adminer> findUser(FindAdminerForm form) {
		try {
			return adminerDao.findUser(form);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public PageBean<Adminer> findUserByPage(int page) {
		try {
			return adminerDao.findUserByPage(page);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@Override
	public void deleteUserById(String ids) {
		try {
			
			adminerDao.deleteUserByIds(ids);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

	@Override
	public Adminer loginUser(String name, String password) {
		IAdminerDao userDao= new AdminerDaoImp();
		return userDao.find(name, password);
		
	}
}
