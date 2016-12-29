package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.TimeReplyVO;
import org.noodle.persistence.TimeReplyDAOImpl;
import org.springframework.stereotype.Service;

@Service
public class TimeReplyServiceImpl implements TimeReplyService {

	@Inject
	TimeReplyDAOImpl dao;
	
	@Override
	public void regist(TimeReplyVO vo) throws Exception {
		dao.create(vo);

	}

	@Override
	public void modify(TimeReplyVO vo) throws Exception {
		dao.update(vo);

	}

	@Override
	public void remove(Integer trno) throws Exception {
		dao.delete(trno);

	}

	@Override
	public List<TimeReplyVO> listReply(Integer tno) throws Exception {
		
		return dao.listReply(tno);
	}

	@Override
	public TimeReplyVO read(Integer trno) throws Exception {
		
		return dao.read(trno);
	}

}
