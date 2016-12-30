package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeImageVO;

public interface RecipeImageService {

	
	public void regist(List<RecipeImageVO> list) throws Exception;
	public RecipeImageVO view(Integer ino)throws Exception;
	public void remove(Integer ino)throws Exception;
	
	public RecipeImageVO viewSteps(RecipeImageVO vo) throws Exception;
}
