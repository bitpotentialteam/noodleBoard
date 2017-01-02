package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.TimeLineVO;
import org.noodle.persistence.TimeLineDAOImpl;
import org.springframework.stereotype.Service;

@Service
public class TimeLineServiceImpl implements TimeLineService {
	
	@Inject
	TimeLineDAOImpl dao;

	@Override
	public void regist(TimeLineVO vo) throws Exception {

		dao.create(vo);

	}

	@Override
	public List<TimeLineVO> listView() throws Exception {
		
		return dao.listView();
	}

	@Override
	public void modify(TimeLineVO vo) throws Exception {
		dao.update(vo);

	}

	@Override
	public void remove(Integer tno) throws Exception {
		dao.delete(tno);

	}

	@Override
	public void addLikeCnt(Integer tno) throws Exception {
		dao.addLikeCnt(tno);
		
	}

	@Override
	public void addReplyCnt(Integer tno) throws Exception {
		dao.addReplyCnt(tno);
		
	}

	@Override
	public void minReplyCnt(Integer tno) throws Exception {
		dao.minReplyCnt(tno);
		
	}

	@Override
	public List<TimeLineVO> firstListView(Integer tno) throws Exception {
	
		return dao.firstListView(tno);
	}

	@Override
	public List<TimeLineVO> lastListView(Integer tno) throws Exception {
		
		return dao.lastListView(tno);
	}

}
