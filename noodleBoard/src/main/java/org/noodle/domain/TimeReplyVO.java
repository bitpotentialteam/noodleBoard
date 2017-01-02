package org.noodle.domain;

import java.util.Date;

public class TimeReplyVO {

	private int trno;
	private int mno;
	private int tno;
	private String content;
	private String nickname;
	private String picture;
	private Date regDate;
	private Date updateDate;

	@Override
	public String toString() {
		return "TimeReplyVO [trno=" + trno + ", mno=" + mno + ", tno=" + tno + ", content=" + content + ", nickname="
				+ nickname + ", picture=" + picture + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
	}

	public int getTrno() {
		return trno;
	}

	public void setTrno(int trno) {
		this.trno = trno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
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

	public Date getRegDate() {
		return regDate;
	}

	public void setRegDate(Date regDate) {
		this.regDate = regDate;
	}

	public Date getUpdateDate() {
		return updateDate;
	}

	public void setUpdateDate(Date updateDate) {
		this.updateDate = updateDate;
	}

}
