package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.TimeLineVO;

public interface TimeLineDAO {

	public void create(TimeLineVO vo)throws Exception;
	public List<TimeLineVO> listView() throws Exception;
	public List<TimeLineVO> firstListView(Integer tno) throws Exception;
	public List<TimeLineVO> lastListView(Integer tno) throws Exception;
	
	public void update(TimeLineVO vo)throws Exception;
	public void delete(Integer tno)throws Exception;
	
	public void addLikeCnt(TimeLineVO vo) throws Exception;
	public void updateLike(TimeLineVO vo)throws Exception;
	public String likeHistory(TimeLineVO vo)throws Exception;
	public Integer readLikeCnt(Integer tno)throws Exception;
	public Integer readReplyCnt(Integer tno)throws Exception;
	
	public void addReplyCnt(Integer tno) throws Exception;
	public void minReplyCnt(Integer tno) throws Exception; 

}
