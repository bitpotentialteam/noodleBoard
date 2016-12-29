package org.noodle.service;

import java.util.List;

import org.noodle.domain.TimeReplyVO;
import org.noodle.persistence.TimeLineDAOImpl;
import org.noodle.persistence.TimeReplyDAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TimeReplyServiceImpl implements TimeReplyService {

	@Autowired
	TimeReplyDAOImpl dao;
	@Autowired
	TimeLineDAOImpl tdao;
	
	@Transactional
	@Override
	public void regist(TimeReplyVO vo) throws Exception {
		
		dao.create(vo);
		tdao.addReplyCnt(vo.getTno());

	}

	@Override
	public void modify(TimeReplyVO vo) throws Exception {
		dao.update(vo);

	}
	
	@Transactional
	@Override
	public void remove(TimeReplyVO vo) throws Exception {
		dao.delete(vo);
		tdao.delete(vo.getTno());

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
