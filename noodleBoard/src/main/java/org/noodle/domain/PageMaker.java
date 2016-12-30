package org.noodle.domain;


public class PageMaker {
	
	
	private Integer totalCount, startPage, endPage;
	private boolean prev, next;
	
	private PageVO vo;
	
	
	public void setPageVO(PageVO vo){	// ?
		this.vo = vo;
	}
	
	
	public void setTotalCount(Integer totalCount){
		this.totalCount = totalCount;
		
		calcPage();
	}
	
	
	private void calcPage(){
		
		endPage = (int)(Math.ceil(vo.getPage() / (double) vo.getPageUnit()) * vo.getPageUnit());
		
		startPage = (endPage - vo.getPageUnit()) + 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double)vo.getPageUnit()) * vo.getPageUnit());
		
		if(endPage < tempEndPage){
			endPage = tempEndPage;
		}
		
		prev = startPage == 1? false : true;
		
		next = endPage * vo.getPageUnit() >= totalCount? false : true; 
		
	}

	// makeAllUri, makeSearchUri....
	
	
	public Integer getStartPage() {
		return startPage;
	}


	public void setStartPage(Integer startPage) {
		this.startPage = startPage;
	}


	public Integer getEndPage() {
		return endPage;
	}


	public void setEndPage(Integer endPage) {
		this.endPage = endPage;
	}


	public boolean isPrev() {
		return prev;
	}


	public void setPrev(boolean prev) {
		this.prev = prev;
	}


	public boolean isNext() {
		return next;
	}


	public void setNext(boolean next) {
		this.next = next;
	}


	public PageVO getVo() {
		return vo;
	}


	public void setVo(PageVO vo) {
		this.vo = vo;
	}


	public Integer getTotalCount() {
		return totalCount;
	}


	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", vo=" + vo + "]";
	}
	
	
}
