package org.noodle.domain;

public class Criteria {

	
	private String searchType;
	private String keyword;
	
	private String brandFilter;
	private String typefilter;
	private String noodleTypeFilter;
	
	private String orderType;
	

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

	public String getBrandFilter() {
		return brandFilter;
	}

	public void setBrandFilter(String brandFilter) {
		this.brandFilter = brandFilter;
	}

	public String getTypefilter() {
		return typefilter;
	}

	public void setTypefilter(String typefilter) {
		this.typefilter = typefilter;
	}

	public String getNoodleTypeFilter() {
		return noodleTypeFilter;
	}

	public void setNoodleTypeFilter(String noodleTypeFilter) {
		this.noodleTypeFilter = noodleTypeFilter;
	}

	public String getOrderType() {
		return orderType;
	}

	public void setOrderType(String orderType) {
		this.orderType = orderType;
	}

	@Override
	public String toString() {
		return "Criteria [searchType=" + searchType + ", keyword=" + keyword + ", brandFilter=" + brandFilter
				+ ", typefilter=" + typefilter + ", noodleTypeFilter=" + noodleTypeFilter + ", orderType=" + orderType
				+ "]";
	}
	
	
}
