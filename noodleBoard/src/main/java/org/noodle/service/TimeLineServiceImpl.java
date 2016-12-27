package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.TimeLineVO;
import org.noodle.persistence.TimeLineDAO;
import org.springframework.stereotype.Service;

@Service
public class TimeLineServiceImpl implements TimeLineService {
	
	@Inject
	private TimeLineDAO dao;

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
	public void remove(int tno) throws Exception {
		dao.delete(tno);

	}

}
