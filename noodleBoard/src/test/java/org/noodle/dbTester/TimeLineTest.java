package org.noodle.dbTester;

import java.util.List;

import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.TimeLineVO;
import org.noodle.persistence.TimeLineDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TimeLineTest {

	@Inject
	TimeLineDAO dao;
	
	@Test
	public void createTest() throws Exception {
		
		TimeLineVO vo = new TimeLineVO();
		vo.setMno(1);
		vo.setContent("두번째테스트");
		
		dao.create(vo);
		
	}
	
	@Test
	public void viewTest()throws Exception{
		
		List<TimeLineVO> list = dao.listView();
		System.out.println(list);
		
	}
	
	@Test
	public void updateTest()throws Exception{
		
		TimeLineVO vo = new TimeLineVO();
		vo.setTno(1);
		vo.setContent("수정수정");
		
		dao.update(vo);
		
	}

}
