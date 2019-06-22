package com.swm.service;

import java.util.List;

import com.swm.form.FindAdminerForm;
import com.swm.model.Adminer;
import com.swm.model.PageBean;
import com.swm.model.User;

public interface IAdminerService {
	public void register(Adminer adminer);

	public Adminer login(Adminer formAdminer) throws Exception;

	public List<Adminer> findUser(FindAdminerForm form);

	public PageBean<Adminer> findUserByPage(int page);

	public void deleteUserById(String id);

	public Adminer loginUser(String name, String password);
}
