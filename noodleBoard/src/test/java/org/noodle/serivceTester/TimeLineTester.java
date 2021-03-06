package org.noodle.serivceTester;



import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.TimeLineVO;
import org.noodle.service.TimeLineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TimeLineTester {
	
	
	private static final Logger logger = LoggerFactory.getLogger(TimeLineTester.class);
	
	@Autowired
	TimeLineService service;

	@Test
	public void listTest() throws Exception{

		logger.info("List" + service.listView());
	
	}
	
	@Test
	public void firstTest()throws Exception{
		
		logger.info("FIRST : " + service.firstListView(60));
	}
	
	@Test
	public void lastTest()throws Exception{
		
		logger.info("LAST" + service.lastListView(70));
	}
	
	@Test
	public void likeTest()throws Exception{
		
		TimeLineVO vo = new TimeLineVO();
		
		vo.setTno(75);
		vo.setMno(8);
		
		service.addLikeCnt(vo);
	}
	
	@Test
	public void historyTest()throws Exception{

		TimeLineVO vo = new TimeLineVO();
		vo.setTno(75);
		vo.setMno(9);
		
		logger.info("history : " + service.likeHistory(vo));
	}
	
	@Test
	public void readReplyCnt()throws Exception{
		
		logger.info(" readReplyCnt : " +  service.readReplyCnt(72));
	
	}
	
	@Test
	public void readLikeCnt()throws Exception{
		
		logger.info(" readLikeCnt : " +  service.readLikeCnt(72));
	
	}
}
