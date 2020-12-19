package com.spring.HOT.dto;

import java.util.Date;

public class PaymentVO {
	
	private String ocode      ;
	private String id         ;
	private int pay        ;
	private Date reg_dt     ;
	private String zipcode    ;
	private String address1   ;
	private String address2   ;
	private String dv_memo    ;
	private String recipient  ;
	private String rcp_hp     ;
	private String payway ;
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
	public int getPay() {
		return pay;
	}
	public void setPay(int pay) {
		this.pay = pay;
	}
	public Date getReg_dt() {
		return reg_dt;
	}
	public void setReg_dt(Date reg_dt) {
		this.reg_dt = reg_dt;
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getDv_memo() {
		return dv_memo;
	}
	public void setDv_memo(String dv_memo) {
		this.dv_memo = dv_memo;
	}
	public String getRecipient() {
		return recipient;
	}
	public void setRecipient(String recipient) {
		this.recipient = recipient;
	}
	public String getRcp_hp() {
		return rcp_hp;
	}
	public void setRcp_hp(String rcp_hp) {
		this.rcp_hp = rcp_hp;
	}
	public String getPayway() {
		return payway;
	}
	public void setPayway(String payway) {
		this.payway = payway;
	}
	@Override
	public String toString() {
		return "PaymentVO [ocode=" + ocode + ", id=" + id + ", pay=" + pay + ", reg_dt=" + reg_dt + ", zipcode="
				+ zipcode + ", address1=" + address1 + ", address2=" + address2 + ", dv_memo=" + dv_memo
				+ ", recipient=" + recipient + ", rcp_hp=" + rcp_hp + ", payway=" + payway + "]";
	}
	

	
	
	

}
