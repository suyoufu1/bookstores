package com.swm.model;



/**
 * 对应数据库的字段
 * @author gyf
 *
 */
public class Order {

	private int orderid;
	private int quantity;
	private double money;
	private String status;
	private String id;
	public int getOrderid() {
		return orderid;
	}
	public void setOrderid(int orderid) {
		this.orderid = orderid;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getMoney() {
		return money;
	}
	public void setMoney(double money) {
		this.money = money;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "Order [orderid=" + orderid + ", quantity=" + quantity + ", money=" + money + ", status=" + status
				+ ", id=" + id + "]";
	}



}
