package org.noodle.domain;

import java.util.Date;
import java.util.List;

public class RecipeCuisineVO {

	
	private Integer bno;
	private Integer step;
	private String content;
	private String thumbnail;
	private String image;
	private Date regdate;
	private Date updatedate;
	
	private List<RecipeCuisineVO> clist;
	
	
	public List<RecipeCuisineVO> getClist() {
		return clist;
	}
	public void setClist(List<RecipeCuisineVO> clist) {
		this.clist = clist;
	}
	public Integer getBno() {
		return bno;
	}
	public void setBno(Integer bno) {
		this.bno = bno;
	}
	public Integer getStep() {
		return step;
	}
	public void setStep(Integer step) {
		this.step = step;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getThumbnail() {
		return thumbnail;
	}
	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
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
		return "RecipeCuisineVO [bno=" + bno + ", step=" + step + ", content=" + content + ", thumbnail=" + thumbnail
				+ ", image=" + image + ", regdate=" + regdate + ", updatedate=" + updatedate + ", clist=" + clist + "]";
	}
	
}
