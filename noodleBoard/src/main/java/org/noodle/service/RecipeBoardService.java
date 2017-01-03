package org.noodle.service;

import java.util.List;

import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.domain.SearchVO;

public interface RecipeBoardService {
	public void regist(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO view(Integer bno)throws Exception;
	public void modify(RecipeBoardVO vo)throws Exception;
	public void remove(RecipeBoardVO vo)throws Exception;
	public List<RecipeBoardVO> listAll(PageVO vo)throws Exception;
	public List<RecipeBoardVO> search(SearchVO vo)throws Exception;
	public int getTotalCount(PageVO vo) throws Exception;

	public void addLikeCount(Integer bno) throws Exception;
	public void minusLikeCount(Integer bno) throws Exception;
	public void register(RecipeBoardVO vo, List<RecipeImageVO> ilist, List<RecipeCuisineVO> clist) throws Exception;
}
