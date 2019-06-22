package com.swm.dao.impl;

import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.dao.IAdminerDao;
import com.swm.form.FindAdminerForm;
import com.swm.model.Adminer;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.utils.C3P0Utils;

public class AdminerDaoImp implements IAdminerDao{

	@Override
	public void insert(Adminer adminer) {
		 QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql = "insert into adminer (name,password,phone,email) values(?,?,?,?)";
		/*Object[] params=new Object[6];
		params[0]=user.getUsername();
		params[1]=user.getPassword();
		params[2]=user.getEmail();
		params[3]=user.getBirthday();*/
		try {
			qr.update(sql, adminer.getName(),adminer.getPassword(),adminer.getPhone(),adminer.getEmail());
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Override
	public Adminer findUser(String name, String password) {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		// 3.查询
		String sql = "select * from adminer where name = ? and password = ?";
		try {
			Adminer user=  qr.query(sql,new BeanHandler<Adminer>(Adminer.class),name,password );
			if ("admin".equals(name)&&"123".equals(password)) {
				System.out.println(user);
			}
		//qr.query(sql, new BeanHandler<User>(User.class),username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(".............................");
		}
		return null;
	}

	@Override
	public List<Adminer> findUser(FindAdminerForm form) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="select *from adminer where 1=1";
		if(form.getId()!=0){
			sql += " and id = " + form.getId() ;
		}
		if(!"".equals(form.getName())){
			sql += " and name like '%" + form.getName() +"%'";
		}
		System.out.println(sql);
		return qr.query(sql, new BeanListHandler<Adminer>(Adminer.class));
		
	}

	@Override
	public PageBean<Adminer> findUserByPage(int page) throws Exception {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//创建pageBean
		PageBean<Adminer> pb=new PageBean<Adminer>();
		String sql="select count(*)from adminer";
		long totalCount=(long) qr.query(sql, new ScalarHandler());
		pb.setTotalCount(totalCount);
		//设置总页数
		int totalPage=(int)(totalCount%pb.getPageCount()==0 ? totalCount/pb.getPageCount(): totalCount/pb.getPageCount()+1);
		pb.setTotalPage(totalPage);
		//设置当前页pageCurrent
		pb.setPageCurrent(page);
		//5.设置pageresult里的list数据【库存排序】
		String sql2="select * from adminer order by id limit ?,?";
		int start=(page-1)*pb.getPageCount();
		List<Adminer> adminer=qr.query(sql2, new BeanListHandler<Adminer>(Adminer.class),start,pb.getTotalCount());
		pb.setList(adminer);
		return pb;
	}

	@Override
	public void deleteUserByIds(String ids) throws Exception {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//1.拆分ids = 1001,1002,10003
		String[] idArr=ids.split(",");
		//2.sql
		String sql="delete from adminer where id=?";
		//循环删除
		/*for(String id:idArr){
			qr.update(sql, id);
		}*/
		//2.封装参数
		Object[][] params=new Object[idArr.length][];
		for(int i=0;i<idArr.length;i++){
			params[i]=new Object[]{idArr[i]};
			System.out.println(params[i]);
			
			
		}
		//4.执行批处理
		qr.batch(sql, params);
		
	}

	@Override
	public Adminer find(String name, String password) {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql = "select * from adminer where name = ? and password = ?";
		try {
			Adminer user=  qr.query(sql,new BeanHandler<Adminer>(Adminer.class),name,password );
			if ("admin".equals(name)&&"123".equals(password)) {
				System.out.println(user);
			}
			return user;
		//qr.query(sql, new BeanHandler<User>(User.class),username,password);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.println(".............................");
		}
		return null;
		
	}
	
}
