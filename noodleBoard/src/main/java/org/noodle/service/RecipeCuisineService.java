package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineService {

	
	public void regist(RecipeCuisineVO vo) throws Exception;
	public void modifyRegist(RecipeCuisineVO vo) throws Exception;
	public List<RecipeCuisineVO> view(Integer bno)throws Exception;
	public void modify(RecipeCuisineVO vo)throws Exception;
	public void remove(Integer bno)throws Exception;
	public Integer stepRead(Integer bno) throws Exception;
	
	public RecipeCuisineVO viewSteps(RecipeCuisineVO vo) throws Exception;
}
