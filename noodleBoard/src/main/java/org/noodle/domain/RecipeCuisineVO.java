package org.noodle.domain;

import java.util.List;

public class RecipeCuisineVO {

	
	private Integer bno;
	private Integer step;
	private String content;
	
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
	@Override
	public String toString() {
		return "RecipeCuisineVO [bno=" + bno + ", step=" + step + ", content=" + content + ", clist=" + clist + "]";
	}
	
	
}
