package org.noodle.domain;

import java.util.Date;

public class RecipeBoardVO {
	
	
	private Integer mno;
	private Integer bno;
	private Integer ino;
	private String title;
	private String content;
	private String materialContent;
	private String image;
	private Integer viewCnt;
	private Integer likeCnt;
	private Integer replyCnt;
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
	public Integer getIno() {
		return ino;
	}
	public void setIno(Integer ino) {
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
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public Integer getViewCnt() {
		return viewCnt;
	}
	public void setViewCnt(Integer viewCnt) {
		this.viewCnt = viewCnt;
	}
	public Integer getLikeCnt() {
		return likeCnt;
	}
	public void setLikeCnt(Integer likeCnt) {
		this.likeCnt = likeCnt;
	}
	public Integer getReplyCnt() {
		return replyCnt;
	}
	public void setReplyCnt(Integer replyCnt) {
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
				+ content + ", materialContent=" + materialContent + ", image=" + image + ", viewCnt=" + viewCnt
				+ ", likeCnt=" + likeCnt + ", replyCnt=" + replyCnt + ", regdate=" + regdate + ", updatedate="
				+ updatedate + "]";
	}

}
