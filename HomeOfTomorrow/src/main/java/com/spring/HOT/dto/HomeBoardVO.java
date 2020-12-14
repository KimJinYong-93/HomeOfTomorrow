package com.spring.HOT.dto;

import java.util.Date;

public class HomeBoardVO {
	
	private int hno          ;
	private String writer       ;
	private String picture      ;
	private String title        ;
	private String content      ;
	private Date reg_dt       ;
	private int viewcnt      ;
	private int budget       ;
	private String dist         ;
	public int getHno() {
		return hno;
	}
	public void setHno(int hno) {
		this.hno = hno;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public int getBudget() {
		return budget;
	}
	public void setBudget(int budget) {
		this.budget = budget;
	}
	public String getDist() {
		return dist;
	}
	public void setDist(String dist) {
		this.dist = dist;
	}
	
	@Override
	public String toString() {
		return "HomeBoardVO [hno=" + hno + ", writer=" + writer + ", picture=" + picture + ", title=" + title
				+ ", content=" + content + ", reg_dt=" + reg_dt + ", viewcnt=" + viewcnt + ", budget=" + budget
				+ ", dist=" + dist + "]";
	}
	
	

}
