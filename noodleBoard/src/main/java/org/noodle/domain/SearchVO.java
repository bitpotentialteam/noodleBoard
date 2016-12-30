package org.noodle.domain;

public class SearchVO extends PageVO {
	
	
	private String searchType, keyword;
	private Integer page, total;
	
	
	public String getSearchType() {
		return searchType;
	}
	public void setSearchType(String searchType) {
		this.searchType = searchType;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public Integer getPage() {
		return page;
	}
	public void setPage(Integer page) {
		this.page = page;
	}
	public Integer getTotal() {
		return total;
	}
	public void setTotal(Integer total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "SearchVO [searchType=" + searchType + ", keyword=" + keyword + ", page=" + page + ", total=" + total
				+ "]";
	}
	
}
