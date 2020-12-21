package com.spring.HOT.command;

import java.util.Date;

import com.spring.HOT.dto.CartVO;
import com.spring.HOT.dto.GoodsVO;

public class CartResponseCommand {
	
	private String gcode            ;
	private String cid              ;
	private String cname            ;
	private String bname;
	private String gname            ;
	private String picture          ;
	private int price            ;
	private String op_choose         ;
	private String cg_code          ;
	private int vol;
	
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
	public String getOp_choose() {
		return op_choose;
	}
	public void setOp_choose(String op_choose) {
		this.op_choose = op_choose;
	}
	public String getCg_code() {
		return cg_code;
	}
	public void setCg_code(String cg_code) {
		this.cg_code = cg_code;
	}
	public int getVol() {
		return vol;
	}
	public void setVol(int vol) {
		this.vol = vol;
	}
	@Override
	public String toString() {
		return "CartResponseCommand [gcode=" + gcode + ", cid=" + cid + ", cname=" + cname + ", bname=" + bname
				+ ", gname=" + gname + ", picture=" + picture + ", price=" + price + ", op_choose=" + op_choose
				+ ", cg_code=" + cg_code + ", vol=" + vol + "]";
	}
	
	public CartResponseCommand toParseCartObject(GoodsVO goods, CartVO cart) {
		CartResponseCommand cartObject = new CartResponseCommand();
		cartObject.setBname(goods.getBname());
		cartObject.setCg_code(goods.getCg_code());
		cartObject.setCid(goods.getCid());
		cartObject.setCname(goods.getCname());
		cartObject.setGcode(goods.getGcode());
		cartObject.setGname(goods.getGname());
		cartObject.setOp_choose(cart.getOp_choose());
		cartObject.setPicture(goods.getPicture());
		cartObject.setPrice(goods.getPrice());
		cartObject.setVol(cart.getVol());
		
		return cartObject;
	}
	
	
	
}
