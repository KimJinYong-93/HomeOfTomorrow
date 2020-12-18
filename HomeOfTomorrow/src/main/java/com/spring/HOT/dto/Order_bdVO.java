package com.spring.HOT.dto;

public class Order_bdVO {
	
	private String ocode       ;
	private String id          ;
	private String gcode       ;
	private int vol         ;
	private String op_choose   ;
	
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
	public String getGcode() {
		return gcode;
	}
	public void setGcode(String gcode) {
		this.gcode = gcode;
	}
	public int getVol() {
		return vol;
	}
	public void setVol(int vol) {
		this.vol = vol;
	}
	public String getOp_choose() {
		return op_choose;
	}
	public void setOp_choose(String op_choose) {
		this.op_choose = op_choose;
	}
	@Override
	public String toString() {
		return "Order_bdVO [ocode=" + ocode + ", id=" + id + ", gcode=" + gcode + ", vol=" + vol + ", op_choose="
				+ op_choose + "]";
	}
	
	
	
	

}
