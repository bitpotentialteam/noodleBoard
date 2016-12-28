package org.noodle.domain;

import java.util.Date;

public class RecipeReplyVO {
	
	
	private Integer mno;
	private Integer bno;
	private Integer rno;
	private String content;
	private Date regdate;
	private Date updatedate;
	
	
	public Integer getMno() {
		return mno;
	}
	public void setMno(Integer mno) {
		this.mno = mno;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public Integer getRno() {
		return rno;
	}
	public void setRno(Integer rno) {
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
		return "RecipeReplyVO [mno=" + mno + ", bno=" + bno + ", rno=" + rno + ", content=" + content + ", regdate="
				+ regdate + ", updatedate=" + updatedate + "]";
	}
	
}
