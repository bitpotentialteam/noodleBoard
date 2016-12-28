package org.noodle.service;

import java.util.List;

import org.noodle.domain.TimeLineVO;

public interface TimeLineService {
	
	public void regist(TimeLineVO vo)throws Exception;
	public List<TimeLineVO> listView()throws Exception;
	public void modify(TimeLineVO vo)throws Exception;
	public void remove(Integer tno)throws Exception;

}
