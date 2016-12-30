package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;

public interface RecipeBoardDAO {

	
	public void create(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO read(Integer bno)throws Exception;
	public void update(RecipeBoardVO vo)throws Exception;
	public void delete(Integer bno)throws Exception;
	public List<RecipeBoardVO> listAll(PageVO vo)throws Exception;
	public List<RecipeBoardVO> listSearch(Criteria cri)throws Exception;
	public List<RecipeBoardVO> testList() throws Exception;
	
	
	public void addViewCount(Integer bno) throws Exception;
	public void addLikeCount(Integer bno) throws Exception;
	public void minusLikeCount(Integer bno) throws Exception;
	public void addReplyCount(Integer bno) throws Exception;
	public void minusReplyCount(Integer bno) throws Exception;
	
}
