package com.spring.HOT.dto;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class MemberNVO {
	
	private String id;
	private String name;
	private String email;
	private String nickname;
	private String picture;
	private String hp;
	private String gender;
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date birthday;
	private String zipcode;
	private String address1;
	private String address2;

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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getHp() {
		return hp;
	}
	public void setHp(String hp) {
		this.hp = hp;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
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
	@Override
	public String toString() {
		return "MemberNVO [id=" + id + ", name=" + name + ", email=" + email + ", nickname=" + nickname + ", picture="
				+ picture + ", hp=" + hp + ", gender=" + gender + ", birthday=" + birthday + ", zipcode=" + zipcode
				+ ", address1=" + address1 + ", address2=" + address2 + "]";
	}

	
	
	
	
}
