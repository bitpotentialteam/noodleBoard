package org.noodle.persistence;


import java.util.List;

import org.noodle.domain.RecipeImageVO;

public interface RecipeImageDAO {

	
	public void create(RecipeImageVO vo) throws Exception;
	public RecipeImageVO read(Integer ino)throws Exception;
	public List<RecipeImageVO> readAll() throws Exception;
	
	public void delete(Integer ino)throws Exception;
	public void update(RecipeImageVO vo) throws Exception;
	
	public List<RecipeImageVO> readBno(Integer bno) throws Exception;
	public RecipeImageVO readStep(RecipeImageVO vo) throws Exception;
	public Integer readName (String thumbnail) throws Exception;
	public void bnoDelete(Integer bno) throws Exception;
	
	
}
