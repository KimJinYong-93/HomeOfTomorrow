package com.spring.HOT.dto;

import java.util.Date;

public class BoardVO {
	
	private int bno          ;
	private String id           ;
	private String nickname     ;
	private String title        ;
	private String picture      ;
	private String content      ;
	private Date reg_dt       ;
	private Date end_dt       ;
	private int viewcnt      ;
	private String cg_code      ;
	
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
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
	public Date getEnd_dt() {
		return end_dt;
	}
	public void setEnd_dt(Date end_dt) {
		this.end_dt = end_dt;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public String getCg_code() {
		return cg_code;
	}
	public void setCg_code(String cg_code) {
		this.cg_code = cg_code;
	}
	
	@Override
	public String toString() {
		return "Board [bno=" + bno + ", id=" + id + ", nickname=" + nickname + ", title=" + title + ", picture="
				+ picture + ", content=" + content + ", reg_dt=" + reg_dt + ", end_dt=" + end_dt + ", viewcnt="
				+ viewcnt + ", cg_code=" + cg_code + "]";
	}
	
	
	

}
