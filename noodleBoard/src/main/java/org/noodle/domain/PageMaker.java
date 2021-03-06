package org.noodle.domain;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;

public class PageMaker {
	
	
	private Integer totalCount, startPage, endPage;
	private boolean prev, next;
	
	private PageVO pageVO;
	private SearchVO cri;
	private int displayPageNum = 10;
	
	public int getDisplayPageNum() {
		return displayPageNum;
	}


	public void setDisplayPageNum(int displayPageNum) {
		this.displayPageNum = displayPageNum;
	}


	public void setCri(SearchVO cri){
		this.cri = cri;
	}
	
	
	public void setTotalCount(Integer totalCount){
		this.totalCount = totalCount;
		
		calcPage();
	}
	
	
	private void calcPage(){
		
		endPage = (int)(Math.ceil(pageVO.getPage() / (double) displayPageNum) * displayPageNum);
		
		startPage = (endPage - displayPageNum) + 1;
		
		int tempEndPage = (int) (Math.ceil(totalCount / (double)pageVO.getPageUnit()));
		
		if(endPage > tempEndPage){
			endPage = tempEndPage;
		}
		
		prev = startPage == 1? false : true;
		
		next = endPage * pageVO.getPageUnit() >= totalCount? false : true; 
		
	}
	
	public String makeQuery(int page) {
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", pageVO.getPageUnit())
				.build();
		
		return uriComponents.toUriString();
	}

	public String makeSearch(int page){
		
		UriComponents uriComponents = UriComponentsBuilder.newInstance()
				.queryParam("page", page)
				.queryParam("perPageNum", pageVO.getPageUnit())
				.build();
		
		if(cri != null){
			uriComponents = UriComponentsBuilder.fromUri(uriComponents.toUri())
			.queryParam("searchType", ((SearchVO)cri).getSearchType())
			.queryParam("keyword", cri.getKeyword())
			.queryParam("orderType", cri.getOrderType())
			.build();
		}
		
		
		return uriComponents.toUriString();
			
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


	public PageVO getPageVO() {
		return pageVO;
	}


	public void setPageVO(PageVO pageVO) {
		this.pageVO = pageVO;
	}


	public Integer getTotalCount() {
		return totalCount;
	}


	@Override
	public String toString() {
		return "PageMaker [totalCount=" + totalCount + ", startPage=" + startPage + ", endPage=" + endPage + ", prev="
				+ prev + ", next=" + next + ", pageVO=" + pageVO + ", cri=" + cri + ", displayPageNum=" + displayPageNum
				+ "]";
	}
	
	
}
