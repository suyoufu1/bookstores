package com.swm.model;

import java.util.List;

public class PageBean<T> {
	private List<T> list;//用list显示页数
	private long totalCount;//总记录数
	private int totalPage;//总共的页数
	private int pageCurrent;//当前页数
	private int pageCount = 5;//每页显示的条数
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> T) {
		this.list = T;
	}
	public long getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(long totalCount) {
		this.totalCount = totalCount;
	}
	public int getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}
	public int getPageCurrent() {
		return pageCurrent;
	}
	public void setPageCurrent(int pageCurrent) {
		this.pageCurrent = pageCurrent;
	}
	public int getPageCount() {
		return pageCount;
	}
	public void setPageCount(int pageCount) {
		this.pageCount = pageCount;
	}

}
