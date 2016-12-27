package org.noodle.persistence;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineDAO {

	
	public void create(RecipeCuisineVO vo) throws Exception;
	public RecipeCuisineVO read(int bno)throws Exception;
	public void update(RecipeCuisineVO vo)throws Exception;
	public void delete(int bno)throws Exception;
}
