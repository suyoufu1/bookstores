package com.swm.dao.impl;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.utils.DBUtils;
import com.swm.dao.IUserDao;
import com.swm.form.FindUserForm;
import com.swm.model.PageBean;
import com.swm.model.User;
import com.swm.utils.C3P0Utils;

public class UserDaoImpl implements IUserDao {

	@Override
	public void insert(User user) {
		    QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());//用了数据库连接池
			String sql = "insert into t_user (username,password,phonenum,address,email) values(?,?,?,?,?)";
			/*Object[] params=new Object[6];
			params[0]=user.getUsername();
			params[1]=user.getPassword();
			params[2]=user.getEmail();
			params[3]=user.getBirthday();*/
			try {
				qr.update(sql, user.getUsername(),user.getPassword(),user.getPhone(),user.getAddress(),user.getEmail());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	}
	
	@Override
	public User findUser(String username, String password) {
		User user = null;
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;

		// 写JDBC代码
		try {
			// 1.注册驱动
			// 2.获取connection对象
			conn = DBUtils.getConnection();

			// 3.查询
			String sql = "select * from t_user where username = ? and password = ?";
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
			
			rs = ps.executeQuery();
			
			//4.遍历
			while(rs.next()){
				user = new User();
				user.setId(rs.getInt("id"));
				user.setUsername(rs.getString("username"));
				user.setPassword(rs.getString("password"));
				user.setPhone("phone");
				user.setEmail(rs.getString("email"));
				System.out.println("哦哦防盗扣苟富贵   ");
				
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			// 5.关闭资源

		}
		
		return user;
	}
	@Override
	public User findUser(String username) {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		try {
			return qr.query("select *from t_user where username=?", new BeanHandler<User>(User.class),username);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		
	}

	@Override
	public PageBean<User> findUserByPage(int page) throws Exception {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//创建pageBean
		PageBean<User> pb=new PageBean<User>();
		String sql="select count(*)from t_user";
		long totalCount=(long) qr.query(sql, new ScalarHandler());
		pb.setTotalCount(totalCount);
		//设置总页数
		int totalPage=(int)(totalCount%pb.getPageCount()==0 ? totalCount/pb.getPageCount(): totalCount/pb.getPageCount()+1);
		pb.setTotalPage(totalPage);
		//设置当前页pageCurrent
		pb.setPageCurrent(page);
		//5.设置pageresult里的list数据【库存排序】
		String sql2="select * from t_user order by id limit ?,?";
		int start=(page-1)*pb.getPageCount();
		List<User> users=qr.query(sql2, new BeanListHandler<User>(User.class),start,pb.getTotalCount());
		pb.setList(users);
		return pb;
	}

	@Override
	public List<User> findUser(FindUserForm form) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="select *from t_user where 1=1";
		if(form.getId()!=0){
			sql += " and id = " + form.getId() ;
		}
		if(!"".equals(form.getName())){
			sql += " and username like '%" + form.getName() +"%'";
		}
		System.out.println(sql);
		return qr.query(sql, new BeanListHandler<User>(User.class));
		
	}

	@Override
	public void deleteUserByIds(String ids) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//1.拆分ids = 1001,1002,10003
		String[] idArr=ids.split(",");
		//2.sql
		String sql="delete from t_user where id=?";
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
	public List<User> findAllusers() throws SQLException {
		//使用QueryRunner方法来连接数据库
				QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
				//查询所有的数据
				return qr.query("select *from t_user", new BeanListHandler<User>(User.class));
	}

	@Override
	public void deleteUser(String id) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="delete from t_user where id=?";
		qr.update(sql, id);
		
	}

	/*public static void main(String[] args) {
		// 1.创建dao对象
		IUserDao userDao = new UserDaoImpl();

		// 2.插入数据
		User user = new User();
		user.setPassword("123");
		user.setEmail("vip@qq.com");
		user.setBirthday(new Date());
		user.setUsername("test1");
		userDao.insert(user);
		
		//3.查询用户
		User user = userDao.findUser("test1", "1234");
		System.out.println(user);
	}*/
	
	/**
	 * 为什么写Dao时候，要写个接口，再写实现
	 * 1.目标是为了以后项目的维护方便
	 * 数据库有mysql/oracle
	 * 
	 */
	
/*	public static void main(String[] args) {
		//IUserDao dao = new OracleUserDaoImpl();
		OracleUserDaoImpl dao = new OracleUserDaoImpl();
		dao.insert(null);
		dao.findUser(null, null);
	}*/
}
