package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.TimeLineVO;
import org.noodle.persistence.TimeLineDAOImpl;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

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

	@Transactional
	@Override
	public void addLikeCnt(TimeLineVO vo) throws Exception {
		
		//like 카운트 증가
		dao.addLikeCnt(vo);
		
		//insert like history 
		dao.updateLike(vo);
		
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

	@Override
	public String likeHistory(TimeLineVO vo) throws Exception {
		
		return dao.likeHistory(vo);
	}

	@Override
	public void updateLike(TimeLineVO vo) throws Exception {

		dao.updateLike(vo);
		
	}

	@Override
	public Integer readLikeCnt(Integer tno) throws Exception {
		
		return dao.readLikeCnt(tno);
	}

	@Override
	public Integer readReplyCnt(Integer tno) throws Exception {
		
		return dao.readReplyCnt(tno);
	}

}
