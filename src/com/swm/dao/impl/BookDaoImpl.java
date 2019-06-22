package com.swm.dao.impl;
import java.sql.SQLException;
import java.util.List;
import java.util.UUID;

import org.apache.commons.dbutils.QueryRunner;
import org.apache.commons.dbutils.handlers.BeanHandler;
import org.apache.commons.dbutils.handlers.BeanListHandler;
import org.apache.commons.dbutils.handlers.ScalarHandler;

import com.swm.dao.IBookDao;
import com.swm.form.FindBookForm;
import com.swm.model.Book;
import com.swm.model.PageBean;
import com.swm.utils.C3P0Utils;
public class BookDaoImpl implements IBookDao{
	//查找所有的数据，并显示在list网页中
	@Override
	public List<Book> findAllbooks() throws SQLException {
		//使用QueryRunner方法来连接数据库
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//查询所有的数据
		return qr.query("select *from booklist", new BeanListHandler<Book>(Book.class));
	}
	//添加数据信息
	@Override
	public void addBook(Book book) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="insert into booklist (id,name,price,pnum,category,des) values (?,?,?,?,?,?)";
		Object[] params=new Object[6];
		params[0]=UUID.randomUUID().toString();
		params[1]=book.getName();
		params[2]=book.getPrice();
		params[3]=book.getPnum();
		params[4]=book.getCategory();
		params[5]=book.getDescribe();
		qr.update(sql,params);
		//qr.update(sql, UUID.randomUUID().toString(),book.getName(),book.getPrice(),book.getPnum(),book.getCategory(),book.getDescribe());
		
		
	}
	//通过ID来[编辑]数据
	@Override
	public Book findBookById(String id) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		return qr.query("select *from booklist where id=?", new BeanHandler<Book>(Book.class),id);
		
	}
	//通过编辑信息之后，需要更新数据信息
	@Override
	public void updateBook(Book book) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="update booklist set name=?,price=?,pnum=?,category=?,des=? where id=?";
		
		qr.update(sql, book.getName(),book.getPrice(),book.getPnum(),book.getCategory(),book.getDescribe(),book.getId());
		
	}
	//删除数据信息
	@Override
	public void deleteBook(String id) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="delete from booklist where id=?";
		qr.update(sql, id);
		
	}
	//批量删除
	@Override
	public void deleteBookByIds(String ids) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//1.拆分ids = 1001,1002,10003
		String[] idArr=ids.split(",");
		//2.sql
		String sql="delete from booklist where id=?";
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
	public List<Book> findBook(FindBookForm form) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		String sql="select *from booklist where 1=1";
		if(!"".equals(form.getId())){
			sql += " and id = '" + form.getId() +"'";
		}
		if(!"".equals(form.getName())){
			sql += " and name like '%" + form.getName() +"%'";
		}
		if(!"".equals(form.getCategory())){
			sql += " and category = '" + form.getCategory() +"'";
		}
		if(!"".equals(form.getMinprice())){
			sql += " and price >= '" + form.getMinprice() +"'";
		}
		if(!"".equals(form.getMaxprice())){
			sql += " and price <= '" + form.getMaxprice() +"'";
		}
		return qr.query(sql, new BeanListHandler<Book>(Book.class));
		
	}
	/*分页查询
	 * page是代表当前页数
	 * (non-Javadoc)
	 * @see com.swm.dao.IBookDao#findBookByPage(java.lang.String)
	 */
	@Override
	public PageBean<Book> findBookByPage(int page) throws SQLException {
		QueryRunner qr=new QueryRunner(C3P0Utils.getDataSource());
		//创建pageBean
		PageBean<Book> pb=new PageBean<Book>();
		//1.查询总记录数
		String sql="select count(*)from booklist";
		long totalCount=(long) qr.query(sql, new ScalarHandler());
		pb.setTotalCount(totalCount);
		//设置总页数
		int totalPage=(int)(totalCount%pb.getPageCount()==0 ? totalCount/pb.getPageCount(): totalCount/pb.getPageCount()+1);
		pb.setTotalPage(totalPage);
		//设置当前页pageCurrent
		pb.setPageCurrent(page);
		//5.设置pageresult里的list数据【库存排序】
		String sql2="select * from booklist order by pnum limit ?,?";
		int start=(page-1)*pb.getPageCount();
		List<Book> books=qr.query(sql2, new BeanListHandler<Book>(Book.class),start,pb.getTotalCount());
		pb.setList(books);
		return pb;
	}
	
}
