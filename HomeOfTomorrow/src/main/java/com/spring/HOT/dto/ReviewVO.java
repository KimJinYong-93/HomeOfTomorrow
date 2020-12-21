package com.spring.HOT.dto;

import java.util.Date;

public class ReviewVO {
	
	private String id        ;
	private String writer    ;
	private int score     ;
	private String picture   ;
	private String content   ;
	private Date reg_dt    ;
	private String gcode     ;
	private String ocode     ;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
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
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}

	@Override
	public String toString() {
		return "ReviewVO [id=" + id + ", writer=" + writer + ", score=" + score + ", picture=" + picture + ", content="
				+ content + ", reg_dt=" + reg_dt + ", gcode=" + gcode + ", ocode=" + ocode + "]";
	}
	
	

}
