package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;

public interface RecipeBoardService {
	public void regist(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO view(int bno)throws Exception;
	public void modify(RecipeBoardVO vo)throws Exception;
	public void remove(int bno)throws Exception;
	public List<RecipeBoardVO> listAll()throws Exception;
	public List<RecipeBoardVO> search(Criteria cri)throws Exception;

}
