package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;

public interface RecipeBoardDAO {

	public void create(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO read(int bno)throws Exception;
	public void update(RecipeBoardVO vo)throws Exception;
	public void delete(int bno)throws Exception;
	public List<RecipeBoardVO> listAll()throws Exception;
	public List<RecipeBoardVO> search(Criteria cri)throws Exception;
	
	public void addViewCount(Integer bno) throws Exception;
	public void addLikeCount(Integer bno) throws Exception;
	public void minusLikeCount(Integer bno) throws Exception;
	public void addReplyCount(Integer bno) throws Exception;
	public void minusReplyCount(Integer bno) throws Exception;
}
