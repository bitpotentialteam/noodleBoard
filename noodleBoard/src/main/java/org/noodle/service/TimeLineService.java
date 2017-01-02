package org.noodle.service;

import java.util.List;

import org.noodle.domain.TimeLineVO;

public interface TimeLineService {
	
	public void regist(TimeLineVO vo)throws Exception;
	public List<TimeLineVO> listView()throws Exception;
	public List<TimeLineVO> firstListView(Integer tno) throws Exception;
	public List<TimeLineVO> lastListView(Integer tno) throws Exception;
	
	public void modify(TimeLineVO vo)throws Exception;
	public void remove(Integer tno)throws Exception;
	
	public void addLikeCnt(Integer tno) throws Exception;
	public void addReplyCnt(Integer tno) throws Exception;
	public void minReplyCnt(Integer tno) throws Exception; 

	
}
