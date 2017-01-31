package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.SearchVO;

public interface RecipeBoardDAO {

	
	public void create(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO read(Integer bno)throws Exception;
	public void update(RecipeBoardVO vo)throws Exception;
	public void delete(Integer bno)throws Exception;
	public List<RecipeBoardVO> listAll(PageVO vo)throws Exception;
	public List<RecipeBoardVO> listSearch(SearchVO cri)throws Exception;
	public List<RecipeBoardVO> listPage(int page) throws Exception;
	public int totalCount(SearchVO cri) throws Exception;
	
	public void addViewCount(RecipeBoardVO vo) throws Exception;
	public void addLikeCount(RecipeBoardVO vo) throws Exception;
	public void minusLikeCount(Integer bno) throws Exception;
	public void addReplyCount(Integer bno) throws Exception;
	public void minusReplyCount(Integer bno) throws Exception;
	
	public void createViewCnt(RecipeBoardVO vo) throws Exception;
	public Integer viewHistory(RecipeBoardVO vo) throws Exception;
	public Integer readViewCnt(Integer bno) throws Exception;
	
	public void createLike(RecipeBoardVO vo) throws Exception;
	public Integer likeHistory(RecipeBoardVO vo) throws Exception;
	public Integer readLikeCnt(Integer bno) throws Exception;
	
	public void updateIno(RecipeBoardVO vo) throws Exception;
	public RecipeBoardVO readTitle(String title) throws Exception;
}
