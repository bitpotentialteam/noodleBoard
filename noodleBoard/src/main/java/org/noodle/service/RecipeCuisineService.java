package org.noodle.service;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineService {

	
	public void regist(RecipeCuisineVO vo) throws Exception;
	public RecipeCuisineVO view(int bno)throws Exception;
	public void modify(RecipeCuisineVO vo)throws Exception;
	public void remove(int bno)throws Exception;
}
