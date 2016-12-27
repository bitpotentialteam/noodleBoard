package org.noodle.domain;

import java.util.Date;

public class TimeLineVO {

	private int tno;
	private int mno;
	private String content;
	private int likeCnt;
	private int replyCnt;
	private Date regDate;
	private Date updateDate;

	@Override
	public String toString() {
		return "TimeLineVO [tno=" + tno + ", mno=" + mno + ", content=" + content + ", likeCnt=" + likeCnt
				+ ", replyCnt=" + replyCnt + ", regDate=" + regDate + ", updateDate=" + updateDate + "]";
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
