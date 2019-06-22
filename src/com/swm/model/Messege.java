package com.swm.model;

import java.util.Date;

/**
 * 对应数据库的字段
 * @author gyf
 *
 */
public class Messege {

	private int id;
	private int userid;
	private String msg;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getUserid() {
		return userid;
	}
	public void setUserid(int userid) {
		this.userid = userid;
	}
	public String getMsg() {
		return msg;
	}
	public void setMsg(String msg) {
		this.msg = msg;
	}
	@Override
	public String toString() {
		return "Messege [id=" + id + ", userid=" + userid + ", msg=" + msg + "]";
	}
	public Messege() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Messege(int id, int userid, String msg) {
		super();
		this.id = id;
		this.userid = userid;
		this.msg = msg;
	}

	
	
}
