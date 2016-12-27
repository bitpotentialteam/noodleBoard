package org.noodle.service;

import org.noodle.domain.RecipeImageVO;

public interface RecipeImageService {

	
	public void regist(RecipeImageVO vo) throws Exception;
	public RecipeImageVO view(Integer ino)throws Exception;
	public void remove(Integer ino)throws Exception;
}
