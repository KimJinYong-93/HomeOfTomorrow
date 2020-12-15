package com.spring.HOT.dto;

public class MemberCVO {
	
	private String id;
	private String name;
	private int cno;
	private String manager;
	private String hp;
	private String email;
	private String address1;
	private String address2;
	private String zipcode;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getCno() {
		return cno;
	}
	public void setCno(int cno) {
		this.cno = cno;
	}
	public String getManager() {
		return manager;
	}
	public void setManager(String manager) {
		this.manager = manager;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
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
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
	@Override
	public String toString() {
		return "MemberCVO [id=" + id + ", name=" + name + ", cno=" + cno + ", manager=" + manager + ", hp=" + hp
				+ ", email=" + email + ", address1=" + address1 + ", address2=" + address2 + ", zipcode=" + zipcode
				+ "]";
	}
	
	
	
}
