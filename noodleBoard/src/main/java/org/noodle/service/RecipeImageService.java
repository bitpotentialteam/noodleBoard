package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;

public interface RecipeImageService {

	
	public void regist(RecipeImageVO vo) throws Exception;
	public RecipeImageVO view(Integer ino)throws Exception;
	public void remove(Integer ino)throws Exception;
	
	public RecipeImageVO viewSteps(RecipeImageVO vo) throws Exception;
	public List<RecipeImageVO> viewBno(Integer bno) throws Exception;
	public Integer viewThumbnail(String thumbnail) throws Exception;
	public List<RecipeImageVO> listAll() throws Exception;
	
}
