package com.spring.HOT.command;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import com.spring.HOT.dto.MemberCVO;
import com.spring.HOT.dto.MemberNVO;
import com.spring.HOT.dto.MemberVO;

public class MemberJoinCommand {
	
	private String id;
	private String pwd;
	private String email;
	private String nickname;
	private MultipartFile picture;
	private String hp;
	private String gender;
	private Date birthday;
	private String manager;
	private String address1;
	private String address2;
	private String name;
	private String authority;
	private String enabled;
	private String cno;
	private String zipcode;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
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

	public MultipartFile getPicture() {
		return picture;
	}

	public void setPicture(MultipartFile picture) {
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

	public String getManager() {
		return manager;
	}

	public void setManager(String manager) {
		this.manager = manager;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}

	public String getEnabled() {
		return enabled;
	}

	public void setEnabled(String enabled) {
		this.enabled = enabled;
	}

	public String getCno() {
		return cno;
	}

	public void setCno(String cno) {
		this.cno = cno;
	}

	public String getZipcode() {
		return zipcode;
	}

	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}

	public MemberVO toMemberParse() {
		MemberVO member = new MemberVO();
		
		member.setId(this.id);
		member.setPwd(this.pwd);
		member.setAuthority(this.authority);
		
		return member;
	}
	
	public MemberNVO toMember_NParse() {
		MemberNVO memberN = new MemberNVO();
		
		memberN.setId(id);
		memberN.setName(name);
		memberN.setEmail(email);
		memberN.setNickname(nickname);
		memberN.setHp(hp);
		memberN.setGender(gender);
		memberN.setBirthday(birthday);
		memberN.setAddress1(address1);
		memberN.setAddress2(address2);
		memberN.setZipcode(zipcode);
		
		return memberN;
	}
	
	public MemberCVO toMember_CParse() {
		MemberCVO memberC = new MemberCVO();
		
		memberC.setId(id);
		memberC.setName(name);
		memberC.setCno(cno);
		memberC.setManager(manager);
		memberC.setHp(hp);
		memberC.setEmail(email);
		memberC.setAddress1(address1);
		memberC.setAddress2(address2);
		memberC.setZipcode(zipcode);
		
		return memberC;
	}

	@Override
	public String toString() {
		return "MemberJoinCommand [id=" + id + ", pwd=" + pwd + ", email=" + email + ", nickname=" + nickname
				+ ", picture=" + picture + ", hp=" + hp + ", gender=" + gender + ", birthday=" + birthday + ", manager="
				+ manager + ", address1=" + address1 + ", address2=" + address2 + ", name=" + name + ", authority="
				+ authority + ", enabled=" + enabled + ", cno=" + cno + ", zipcode=" + zipcode + "]";
	}
	
	
	
}
