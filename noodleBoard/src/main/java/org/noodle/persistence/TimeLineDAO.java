package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.TimeLineVO;

public interface TimeLineDAO {

	public void create(TimeLineVO vo)throws Exception;
	public List<TimeLineVO> listView() throws Exception;
	public void update(TimeLineVO vo)throws Exception;
	public void delete(Integer tno)throws Exception;
	
	public void addLikeCnt(Integer tno) throws Exception;
	public void addReplyCnt(Integer tno) throws Exception;
	public void minReplyCnt(Integer tno) throws Exception; 

}
