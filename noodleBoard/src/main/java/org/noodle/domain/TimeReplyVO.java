package org.noodle.domain;

import java.util.Date;

public class TimeReplyVO {

	private int trno;
	private int mno;
	private int tno;
	private String content;
	private Date regDate;
	private Date updateDate;

	@Override
	public String toString() {
		return "TimeReplyVO [trno=" + trno + ", mno=" + mno + ", tno=" + tno + ", content=" + content + ", regDate="
				+ regDate + ", updateDate=" + updateDate + "]";
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
