package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;

public interface RecipeCuisineDAO {

	
	public void create(RecipeCuisineVO vo) throws Exception;
	public void modifyCreate(RecipeCuisineVO vo) throws Exception;
	public List<RecipeCuisineVO> read(Integer bno)throws Exception;
	public void update(RecipeCuisineVO vo)throws Exception;
	public void delete(Integer bno)throws Exception;
	public void deletes(RecipeCuisineVO vo) throws Exception;
	
	public RecipeCuisineVO readStep(RecipeCuisineVO vo) throws Exception;
	public void bnoDelete(Integer bno) throws Exception;
	public Integer stepRead(Integer bno) throws Exception;
}
