package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;

public interface RecipeImageService {

	
	public void regist(RecipeImageVO vo) throws Exception;
	public List<RecipeImageVO> view(RecipeImageVO vo)throws Exception;
	public void remove(Integer ino)throws Exception;
	
	public RecipeImageVO viewSteps(RecipeImageVO vo) throws Exception;
	
}
