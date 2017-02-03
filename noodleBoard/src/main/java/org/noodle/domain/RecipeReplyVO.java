package org.noodle.domain;

import java.util.Date;
import java.util.List;

public class RecipeReplyVO {
	
	
	private Integer mno;
	private Integer bno;
	private Integer rno;
	private Integer rrno;
	private Integer seq;
	private String content;
	private String nickname;
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
	public Integer getRrno() {
		return rrno;
	}
	public void setRrno(Integer rrno) {
		this.rrno = rrno;
	}
	public Integer getSeq() {
		return seq;
	}
	public void setSeq(Integer seq) {
		this.seq = seq;
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
		return "RecipeReplyVO [mno=" + mno + ", bno=" + bno + ", rno=" + rno + ", rrno=" + rrno + ", seq=" + seq
				+ ", content=" + content + ", nickname=" + nickname + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}
	
	
	
	
}
