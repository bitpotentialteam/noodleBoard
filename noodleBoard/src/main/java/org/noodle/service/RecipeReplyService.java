package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;

public interface RecipeReplyService {
	
	public void regist(RecipeReplyVO vo) throws Exception;
	public void modify(RecipeReplyVO vo) throws Exception;
	public void remove(RecipeReplyVO vo) throws Exception;
	public List<RecipeReplyVO> listAll(Integer bno) throws Exception;
	public List<RecipeReplyVO> seqRead(Integer rrno) throws Exception;
	public void rrnoModify(Integer rno) throws Exception;
	public Integer currvalRno()throws Exception;

}
