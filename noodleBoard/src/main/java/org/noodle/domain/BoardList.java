package org.noodle.domain;

import java.util.List;

public class BoardList {
	
	
	private List<RecipeImageVO> ilist;
	private List<RecipeCuisineVO> clist;
	
	
	public List<RecipeImageVO> getIlist() {
		return ilist;
	}


	public void setIlist(List<RecipeImageVO> ilist) {
		this.ilist = ilist;
	}


	public List<RecipeCuisineVO> getClist() {
		return clist;
	}


	public void setClist(List<RecipeCuisineVO> clist) {
		this.clist = clist;
	}


	@Override
	public String toString() {
		return "BoardList [ilist=" + ilist + ", clist=" + clist + "]";
	}
	
	

}
