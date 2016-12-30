package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineService {

	
	public void regist(List<RecipeCuisineVO> list) throws Exception;
	public RecipeCuisineVO view(Integer bno)throws Exception;
	public void modify(RecipeCuisineVO vo)throws Exception;
	public void remove(Integer bno)throws Exception;
	
	public RecipeCuisineVO viewSteps(RecipeCuisineVO vo) throws Exception;
}
