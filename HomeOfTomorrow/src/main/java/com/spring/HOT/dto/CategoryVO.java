package com.spring.HOT.dto;

public class CategoryVO {
	
	private String cg_code;
	private String name;
	
	public String getCg_code() {
		return cg_code;
	}
	public void setCg_code(String cg_code) {
		this.cg_code = cg_code;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "CategoryVO [cg_code=" + cg_code + ", name=" + name + "]";
	}
	
	
	
	
}
