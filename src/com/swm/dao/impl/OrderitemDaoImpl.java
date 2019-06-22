package com.swm.dao.impl;


import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.dao.IOrderDao;
import com.swm.dao.IOrderitemDao;
import com.swm.dao.IUserDao;
import com.swm.form.FindUserForm;
import com.swm.model.Book;
import com.swm.model.Order;
import com.swm.model.Orderitems;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.utils.C3P0Utils;

public class OrderitemDaoImpl implements IOrderitemDao {
	QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
	@Override
	public void insert(Orderitems orderitems) throws SQLException {
		String sql="insert into orderitems (booknum,oederid,price,quantity) values (?,?,?,?,?)";
		Object[] params=new Object[4];
		params[0]=orderitems.getBookid();
		params[1]=orderitems.getOrderid();
		params[2]=orderitems.getPrice();
		params[3]=orderitems.getQuantity();
		qr.update(sql,params);
	}

	@Override
	public Orderitems findUser(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public PageBean<Orderitems> findUserByPage(int page) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Orderitems> findUser(FindUserForm form) throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUserByIds(String ids) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Orderitems> findAllusers() throws SQLException {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void deleteUser(String id) throws SQLException {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Orderitems> findAllbooks() throws SQLException {
	//使用QueryRunner方法来连接数据库
	QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
	//查询所有的数据
	return qr.query("select *from orderitems", new BeanListHandler<Orderitems>(Orderitems.class));
		
	}

	

	
}
