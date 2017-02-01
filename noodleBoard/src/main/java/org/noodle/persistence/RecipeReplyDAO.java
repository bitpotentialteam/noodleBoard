package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;

public interface RecipeReplyDAO {
	
	public void create(RecipeReplyVO vo)throws Exception;
	public RecipeReplyVO read(Integer rno)throws Exception;
	public void update(RecipeReplyVO vo) throws Exception;
	public void delete(Integer rno) throws Exception;
	public void deleteRrno(Integer rrno) throws Exception;
	public void deleteBno(Integer bno) throws Exception;
	public List<RecipeReplyVO> listAll(Integer bno)throws Exception;
	public List<RecipeReplyVO> readSeq(Integer rrno)throws Exception;
	public void rrnoUpdate(Integer rno) throws Exception;
	public Integer rnoCurrval() throws Exception;
	public void seqUpdate(Integer rno) throws Exception;
	
}
