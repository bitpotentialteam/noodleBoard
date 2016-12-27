package org.noodle.domain;

import java.util.Date;

public class RecipeReplyVO {
	
	private int mno;
	private int rno;
	private String content;
	private Date regdate;
	private Date updatedate;
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getRno() {
		return rno;
	}
	public void setRno(int rno) {
		this.rno = rno;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
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
	@Override
	public String toString() {
		return "RecipeReplyVO [mno=" + mno + ", rno=" + rno + ", content=" + content + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
	
	
	

}
