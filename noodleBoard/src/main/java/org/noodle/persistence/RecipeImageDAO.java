package org.noodle.persistence;


import org.noodle.domain.RecipeImageVO;

public interface RecipeImageDAO {

	
	public void create(RecipeImageVO vo) throws Exception;
	public RecipeImageVO read(Integer ino)throws Exception;
	public void delete(Integer ino)throws Exception;
	
	public RecipeImageVO readStep(RecipeImageVO vo) throws Exception;
	public void bnoDelete(Integer bno) throws Exception;
	
}
