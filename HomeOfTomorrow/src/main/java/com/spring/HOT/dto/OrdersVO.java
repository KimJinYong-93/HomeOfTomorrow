package com.spring.HOT.dto;

import java.util.Date;

public class OrdersVO {
	
	private String ocode     ;
	private String id        ;
	private Date reg_dt    ;
	private String ostatus   ;
	
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
	}
	@Override
	public String toString() {
		return "OrdersVO [ocode=" + ocode + ", id=" + id + ", reg_dt=" + reg_dt + ", ostatus=" + ostatus + "]";
	}
	
	
	

}
