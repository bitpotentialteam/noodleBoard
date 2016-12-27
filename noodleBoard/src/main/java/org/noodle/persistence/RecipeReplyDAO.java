package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;

public interface RecipeReplyDAO {
	
	public void create(RecipeReplyVO vo)throws Exception;
	public void update(RecipeReplyVO vo) throws Exception;
	public void delete(int rno) throws Exception;
	public List<RecipeReplyVO> listAll()throws Exception;

}
