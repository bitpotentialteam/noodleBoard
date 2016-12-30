package org.noodle.service;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineService {

	
	public void regist(RecipeCuisineVO vo) throws Exception;
	public RecipeCuisineVO view(Integer bno)throws Exception;
	public void modify(RecipeCuisineVO vo)throws Exception;
	public void remove(Integer bno)throws Exception;
	
	public RecipeCuisineVO viewSteps(RecipeCuisineVO vo) throws Exception;
}
