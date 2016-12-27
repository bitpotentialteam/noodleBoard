package org.noodle.domain;

import java.util.Date;

public class RecipeBoardVO {
	
	private int mno;
	private int bno;
	private int ino;
	private String title;
	private String content;
	private String materialContent;
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
	public int getIno() {
		return ino;
	}
	public void setIno(int ino) {
		this.ino = ino;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMaterialContent() {
		return materialContent;
	}
	public void setMaterialContent(String materialContent) {
		this.materialContent = materialContent;
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
		return "RecipeBoardVO [mno=" + mno + ", bno=" + bno + ", ino=" + ino + ", title=" + title + ", content="
				+ content + ", materialContent=" + materialContent + ", viewCnt=" + viewCnt + ", likeCnt=" + likeCnt
				+ ", replyCnt=" + replyCnt + ", regdate=" + regdate + ", updatedate=" + updatedate + "]";
	}
	
	
	

}
