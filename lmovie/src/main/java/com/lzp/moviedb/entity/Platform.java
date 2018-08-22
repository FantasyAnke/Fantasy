package com.lzp.moviedb.entity;

public class Platform {
	private Integer platformid;
	private String  platformname;
	private String  platformpass;
	private String phone;
	private String number;

	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getNumber() {
		return number;
	}
	public void setNumber(String number) {
		this.number = number;
	}
	public Integer getPlatformid() {
		return platformid;
	}
	public void setPlatformid(Integer platformid) {
		this.platformid = platformid;
	}
	public String getPlatformname() {
		return platformname;
	}
	public void setPlatformname(String platformname) {
		this.platformname = platformname;
	}
	public String getPlatformpass() {
		return platformpass;
	}
	public void setPlatformpass(String platformpass) {
		this.platformpass = platformpass;
	}
	
	
}
