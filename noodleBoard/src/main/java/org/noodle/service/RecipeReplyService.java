package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;

public interface RecipeReplyService {
	
	public void regist(RecipeReplyVO vo) throws Exception;
	public void modify(RecipeReplyVO vo) throws Exception;
	public void remove(int rno) throws Exception;
	public List<RecipeReplyVO> listAll() throws Exception;

}
