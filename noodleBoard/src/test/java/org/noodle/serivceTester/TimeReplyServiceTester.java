package org.noodle.serivceTester;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.controller.RecipeController;
import org.noodle.domain.TimeReplyVO;
import org.noodle.service.TimeReplyServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TimeReplyServiceTester {

	@Inject
	TimeReplyServiceImpl service;
	
	private static final Logger logger = LoggerFactory.getLogger(TimeReplyServiceTester.class);
	
	@Test
	public void REGISTtest() throws Exception {
		
		TimeReplyVO vo = new TimeReplyVO();
		
		vo.setContent("꺄아아아아테스트다테스트");
		vo.setMno(5);
		vo.setTno(3);
		
		service.regist(vo);
		
		logger.info("vo" + vo);
	}

}
