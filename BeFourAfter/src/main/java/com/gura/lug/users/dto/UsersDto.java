package com.gura.lug.users.dto;

public class UsersDto {

	private String id;
	private String pwd;
	private String name;
	private String phone;
	private String email;
	private String profile;
	private String regdate;
	private String newPwd;
	private String postcode;
	private String addr;
	private String detailAddr;

	public UsersDto() {}

	public UsersDto(String id, String pwd, String name, String phone, String email, String profile, String regdate,
			String newPwd, String postcode, String addr, String detailAddr) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.profile = profile;
		this.regdate = regdate;
		this.newPwd = newPwd;
		this.postcode = postcode;
		this.addr = addr;
		this.detailAddr = detailAddr;
	}

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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getProfile() {
		return profile;
	}

	public void setProfile(String profile) {
		this.profile = profile;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getNewPwd() {
		return newPwd;
	}

	public void setNewPwd(String newPwd) {
		this.newPwd = newPwd;
	}

	public String getPostcode() {
		return postcode;
	}

	public void setPostcode(String postcode) {
		this.postcode = postcode;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}

	public String getDetailAddr() {
		return detailAddr;
	}

	public void setDetailAddr(String detailAddr) {
		this.detailAddr = detailAddr;
	}
	
}	