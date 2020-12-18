package com.spring.HOT.dto;

import java.util.Date;

public class GoodsVO {
	
	private String gcode            ;
	private String cid              ;
	private String cname            ;
	private String bname;
	private String gname            ;
	private String picture          ;
	private int price            ;
	private String op_name          ;
	private String op_val           ;
	private String content          ;
	private int viewcnt          ;
	private Date reg_dt           ;
	private String cg_code          ;
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public String getCid() {
		return cid;
	}
	public void setCid(String cid) {
		this.cid = cid;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getBname() {
		return bname;
	}
	public void setBname(String bname) {
		this.bname = bname;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOp_name() {
		return op_name;
	}
	public void setOp_name(String op_name) {
		this.op_name = op_name;
	}
	public String getOp_val() {
		return op_val;
	}
	public void setOp_val(String op_val) {
		this.op_val = op_val;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getViewcnt() {
		return viewcnt;
	}
	public void setViewcnt(int viewcnt) {
		this.viewcnt = viewcnt;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getCg_code() {
		return cg_code;
	}
	public void setCg_code(String cg_code) {
		this.cg_code = cg_code;
	}
	@Override
	public String toString() {
		return "GoodsVO [gcode=" + gcode + ", cid=" + cid + ", cname=" + cname + ", bname=" + bname + ", gname=" + gname
				+ ", picture=" + picture + ", price=" + price + ", op_name=" + op_name + ", op_val=" + op_val
				+ ", content=" + content + ", viewcnt=" + viewcnt + ", reg_dt=" + reg_dt + ", cg_code=" + cg_code + "]";
	}


	
	
	

}
