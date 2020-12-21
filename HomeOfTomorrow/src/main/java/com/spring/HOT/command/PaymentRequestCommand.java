package com.spring.HOT.command;

import java.util.Date;

import com.spring.HOT.dto.CartVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;
import com.spring.HOT.dto.Order_bdVO;
import com.spring.HOT.dto.OrdersVO;
import com.spring.HOT.dto.PaymentVO;

public class PaymentRequestCommand {
	
	private String id;
	private String gcode;
	private String vol;
	private String op_choose;
	private int price            ;
	private String ocode       ;
	private String rv_check;
	private String ostatus   ;
	private String zipcode    ;
	private String address1   ;
	private String address2   ;
	private String dv_memo    ;
	private String recipient  ;
	private String rcp_hp     ;
	private String payway ;
	
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
	public String getVol() {
		return vol;
	}
	public void setVol(String vol) {
		this.vol = vol;
	}
	public String getOp_choose() {
		return op_choose;
	}
	public void setOp_choose(String op_choose) {
		this.op_choose = op_choose;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getOcode() {
		return ocode;
	}
	public void setOcode(String ocode) {
		this.ocode = ocode;
	}
	public String getRv_check() {
		return rv_check;
	}
	public void setRv_check(String rv_check) {
		this.rv_check = rv_check;
	}
	public String getOstatus() {
		return ostatus;
	}
	public void setOstatus(String ostatus) {
		this.ostatus = ostatus;
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
	
	public OrdersVO toParseOrdersVO(String id) {
		OrdersVO orders = new OrdersVO();
		
		orders.setId(id);
		orders.setOcode(this.ocode);
		orders.setOstatus("2");
		
		return orders;
	}
	
	public Order_bdVO toParseOrder_bdVO(String id) {
		Order_bdVO order_bd = new Order_bdVO();
		
		order_bd.setId(id);
		order_bd.setOcode(this.ocode);
		order_bd.setGcode(this.gcode);
		order_bd.setOp_choose(this.op_choose);
		order_bd.setVol(Integer.parseInt(this.vol));
		
		return order_bd;
	}
	
	public PaymentVO toParsePaymentVO(MemberNVO memberN) {
		PaymentVO pay = new PaymentVO();
		
		pay.setId(memberN.getId());
		pay.setOcode(this.ocode);
		pay.setRecipient(memberN.getName());
		pay.setRcp_hp(memberN.getHp());
		pay.setPayway(this.payway);
		pay.setZipcode(memberN.getZipcode());
		pay.setAddress1(memberN.getAddress1());
		pay.setAddress2(memberN.getAddress2());
		pay.setDv_memo("빠른배송 부탁드립니다.");
		
		return pay;
	}
	@Override
	public String toString() {
		return "PaymentRequestCommand [id=" + id + ", gcode=" + gcode + ", vol=" + vol + ", op_choose=" + op_choose
				+ ", price=" + price + ", ocode=" + ocode + ", rv_check=" + rv_check + ", ostatus=" + ostatus
				+ ", zipcode=" + zipcode + ", address1=" + address1 + ", address2=" + address2 + ", dv_memo=" + dv_memo
				+ ", recipient=" + recipient + ", rcp_hp=" + rcp_hp + ", payway=" + payway + "]";
	}
	
	
	
}
