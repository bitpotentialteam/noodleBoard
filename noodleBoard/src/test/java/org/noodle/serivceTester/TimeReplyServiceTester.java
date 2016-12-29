package org.noodle.serivceTester;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.TimeReplyVO;
import org.noodle.persistence.TimeReplyDAO;
import org.noodle.service.TimeReplyServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TimeReplyServiceTester {

	@Autowired
	TimeReplyServiceImpl service;
	
	@Autowired
	TimeReplyDAO dao;
	
	private static final Logger logger = LoggerFactory.getLogger(TimeReplyServiceTester.class);
	
	@Test
	public void REGISTtest() throws Exception {
		
		TimeReplyVO vo = new TimeReplyVO();
		
		vo.setContent("꺄아아아아테스트다테스트");
		vo.setMno(5);
		vo.setTno(3);
		
		service.regist(vo);

	}
	
	@Test
	public void updateTest()throws Exception{
		
		TimeReplyVO vo = new TimeReplyVO();
		vo.setContent("수정수정 야호수정");
		vo.setTrno(44);
		
		service.modify(vo);
	}
	
	@Test
	public void listTest()throws Exception{
		
		List<TimeReplyVO> list = service.listReply(79);
		logger.info("list" + list);
	}
	
	@Test
	
	public void readTest()throws Exception{
		
		System.out.println(service.read(44));
	}
	
	@Test
	public void deleteTest()throws Exception{
		
		TimeReplyVO vo = new TimeReplyVO();
		vo.setTrno(42);
		service.remove(vo);
	}
	
	@Test
	public void daoTest()throws Exception{
		
		System.out.println(dao.listReply(5));
	}

}
