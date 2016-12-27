package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.TimeLineVO;

public interface TimeLineDAO {

	public void create(TimeLineVO vo)throws Exception;
	public List<TimeLineVO> listView() throws Exception;
	public void update(TimeLineVO vo)throws Exception;
	public void delete(int tno)throws Exception;
	
}