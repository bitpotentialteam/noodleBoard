package org.noodle.domain;

import java.util.Date;

public class MemberVO {

	private Integer mno;
	private String userid;
	private String userpw;
	private String username;
	private String nickname;
	private String email;
	private String picture;
	private String client_ID;
	private String client_PW;
	private Date regdate;
	private Date updatedate;
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getUserpw() {
		return userpw;
	}
	public void setUserpw(String userpw) {
		this.userpw = userpw;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public String getClient_ID() {
		return client_ID;
	}
	public void setClient_ID(String client_ID) {
		this.client_ID = client_ID;
	}
	public String getClient_PW() {
		return client_PW;
	}
	public void setClient_PW(String client_PW) {
		this.client_PW = client_PW;
	}
	public Date getRegdate() {
		return regdate;
	}
	public void setRegdate(Date regdate) {
		this.regdate = regdate;
	}
	public Date getUpdatedate() {
		return updatedate;
	}
	public void setUpdatedate(Date updatedate) {
		this.updatedate = updatedate;
	}
	
}
