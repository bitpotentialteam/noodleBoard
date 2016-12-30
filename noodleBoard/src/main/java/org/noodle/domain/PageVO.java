package org.noodle.domain;


public class PageVO {
	
	
	private Integer pageUnit, page;
	
	
	public Integer getStartPage(){
		return (this.page -1) * pageUnit;
	}
	
	public Integer getEndPage(){
		return (this.page)* pageUnit;
	}
	
	public PageVO(){
		this.pageUnit = 10;
		this.page = 1;
	}

	
	public Integer getPageUnit() {
		return pageUnit;
	}

	public void setPageUnit(Integer pageUnit) {


		if(pageUnit <= 0 || pageUnit > 100){
			this.pageUnit = 10;
			return;
		}
		
		this.pageUnit = pageUnit;
	}

	public Integer getPage() {
		return page;
	}

	public void setPage(Integer page) {

		if(page <= 0){
			this.page = 1;
			return;
		}
		
		this.page = page;
	}

	@Override
	public String toString() {
		return "PageVO [pageUnit=" + pageUnit + ", page=" + page + "]";
	}
	

}
