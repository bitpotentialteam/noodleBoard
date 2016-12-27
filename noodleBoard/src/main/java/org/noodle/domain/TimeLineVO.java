package org.noodle.domain;

import java.util.Date;

public class TimeLineVO {

	private int tno;
	private int mno;
	private String content;
	private String nickname;
	private String picture;
	private int likeCnt;
	private int replyCnt;
	private Date regDate;
	private Date updateDate;

	@Override
	public String toString() {
		return "TimeLineVO [tno=" + tno + ", mno=" + mno + ", content=" + content + ", nickname=" + nickname
				+ ", picture=" + picture + ", likeCnt=" + likeCnt + ", replyCnt=" + replyCnt + ", regDate=" + regDate
				+ ", updateDate=" + updateDate + "]";
	}

	public int getTno() {
		return tno;
	}

	public void setTno(int tno) {
		this.tno = tno;
	}

	public int getMno() {
		return mno;
	}

	public void setMno(int mno) {
		this.mno = mno;
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

	public int getLikeCnt() {
		return likeCnt;
	}

	public void setLikeCnt(int likeCnt) {
		this.likeCnt = likeCnt;
	}

	public int getReplyCnt() {
		return replyCnt;
	}

	public void setReplyCnt(int replyCnt) {
		this.replyCnt = replyCnt;
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
