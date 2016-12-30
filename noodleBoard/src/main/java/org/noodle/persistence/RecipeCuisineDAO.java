package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineDAO {

	
	public void create(List<RecipeCuisineVO> list) throws Exception;
	public RecipeCuisineVO read(Integer bno)throws Exception;
	public void update(RecipeCuisineVO vo)throws Exception;
	public void delete(Integer bno)throws Exception;
	
	public RecipeCuisineVO readStep(RecipeCuisineVO vo) throws Exception;
	public void bnoDelete(Integer bno) throws Exception;
}
