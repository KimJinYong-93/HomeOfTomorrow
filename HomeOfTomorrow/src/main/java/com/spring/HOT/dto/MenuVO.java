package com.spring.HOT.dto;

public class MenuVO {
	
	private String mcode       ;
	private String mname       ;
	private String url         ;
	private String icon        ;
	private String upcode      ;
	private int downlevel   ;
	
	public String getMcode() {
		return mcode;
	}
	public void setMcode(String mcode) {
		this.mcode = mcode;
	}
	public String getMname() {
		return mname;
	}
	public void setMname(String mname) {
		this.mname = mname;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getUpcode() {
		return upcode;
	}
	public void setUpcode(String upcode) {
		this.upcode = upcode;
	}
	public int getDownlevel() {
		return downlevel;
	}
	public void setDownlevel(int downlevel) {
		this.downlevel = downlevel;
	}
	@Override
	public String toString() {
		return "MenuVO [mcode=" + mcode + ", mname=" + mname + ", url=" + url + ", icon=" + icon + ", upcode=" + upcode
				+ ", downlevel=" + downlevel + "]";
	}
	
	
	
	

}
