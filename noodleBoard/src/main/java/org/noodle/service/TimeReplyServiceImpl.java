package org.noodle.service;

import java.util.List;

import org.noodle.controller.TimeReplyController;
import org.noodle.domain.TimeReplyVO;
import org.noodle.persistence.TimeLineDAOImpl;
import org.noodle.persistence.TimeReplyDAOImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TimeReplyServiceImpl implements TimeReplyService {
	

	private static final Logger logger = LoggerFactory.getLogger(TimeReplyServiceImpl.class);

	@Autowired
	TimeReplyDAOImpl dao;
	@Autowired
	TimeLineDAOImpl tdao;
	
	@Transactional
	@Override
	public void regist(TimeReplyVO vo) throws Exception {
		
		//리플테이블에 리플을 등록을하면
		dao.create(vo);
		
		//타임라인테이블의 리플카운트가 1 증가.
		tdao.addReplyCnt(vo.getTno());
		
		logger.info(" tnotnotnotnotnotnotnoptnottno" + vo.getTno());

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
