package org.noodle.dbTester;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.noodle.domain.TimeLineVO;
import org.noodle.persistence.TimeLineDAO;
import org.noodle.persistence.TimeReplyDAO;
import org.noodle.persistence.WikiDAO;
import org.noodle.service.TimeReplyServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class TimeLineTest {

	@Autowired
	TimeLineDAO dao;
	@Autowired
	WikiDAO wiki;
	@Autowired
	TimeReplyServiceImpl service;
	
	@Autowired
	TimeReplyDAO tdao;
	
	private static final Logger logger = LoggerFactory.getLogger(TimeLineTest.class);
	
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
		logger.info("list" + list);
		
	}
	
	@Test
	public void updateTest()throws Exception{
		
		TimeLineVO vo = new TimeLineVO();
		vo.setTno(1);
		vo.setContent("수정수정");
		
		dao.update(vo);
		
	}
	
	@Test
	public void deleteTest()throws Exception{
		
		
		dao.delete(2);
		
	}
	
	@Test
	public void wikiTest()throws Exception{
	
		System.out.println(wiki.read("신라면"));
	}
	
	@Test
	public void wikiSearch()throws Exception{
		
		Criteria cri = new Criteria();
		
		
		String[] noodle = {"유탕","건면"};
		String[] brand = {"삼양","농심"};
		String[] kind = {"일반"};
		
	
		cri.setNoodleTypeFilter(noodle);
		cri.setBrandFilter(brand);
		cri.setKindFilter(kind);

		cri.setOrderType("new");
		
		System.out.println(cri.toString());
		
	//	List<NoodleVO> result = wiki.searchList(cri);
		//System.out.println(result);
		
	}
	
	@Test
	public void daoTest()throws Exception{
		
		System.out.println(tdao.listReply(5));
	}
	
	@Test
	public void serviceTest()throws Exception{

		System.out.println(service.listReply(5));
	}

}
