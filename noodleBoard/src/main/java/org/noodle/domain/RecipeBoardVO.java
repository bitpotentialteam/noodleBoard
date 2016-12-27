package org.noodle.domain;

import java.util.Date;

public class RecipeBoardVO {
	
	private int mno;
	private int bno;
	private int thumbnail;
	private String title;
	private int viewCnt;
	private int likeCnt;
	private int replyCnt;
	private Date regdate;
	private Date updatedate;
	
	public int getMno() {
		return mno;
	}
	public void setMno(int mno) {
		this.mno = mno;
	}
	public int getBno() {
		return bno;
	}
	public void setBno(int bno) {
		this.bno = bno;
	}
	public int getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(int thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public int getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(int viewCnt) {
		this.viewCnt = viewCnt;
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
		return "RecipeBoardVO [mno=" + mno + ", bno=" + bno + ", thumbnail=" + thumbnail + ", title=" + title
				+ ", viewCnt=" + viewCnt + ", likeCnt=" + likeCnt + ", replyCnt=" + replyCnt + ", regdate=" + regdate
				+ ", updatedate=" + updatedate + "]";
	}
	
	

}
