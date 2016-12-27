package org.noodle.persistence;


import org.noodle.domain.RecipeImageVO;

public interface RecipeImageDAO {

	
	public void create(RecipeImageVO vo) throws Exception;
	public RecipeImageVO read(Integer bno)throws Exception;
	public void delete(Integer bno)throws Exception;
	
}
