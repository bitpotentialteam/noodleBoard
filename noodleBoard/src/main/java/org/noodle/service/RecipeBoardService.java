package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;

public interface RecipeBoardService {
	public void create(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO read(Integer mno)throws Exception;
	public void update(RecipeBoardVO vo)throws Exception;
	public void delete(Integer mno)throws Exception;
	public List<RecipeBoardVO> listAll()throws Exception;
	public List<RecipeBoardVO> search(Criteria cri)throws Exception;

}
