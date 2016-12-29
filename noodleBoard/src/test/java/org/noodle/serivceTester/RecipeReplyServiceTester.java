package org.noodle.serivceTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeReplyVO;
import org.noodle.service.RecipeReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeReplyServiceTester {

	@Autowired
	RecipeReplyService service;
	
	RecipeReplyVO vo;
	
	@Before
	public void setup() {
		vo = new RecipeReplyVO();
	}
	
	@Test
	public void testRegist() throws Exception{

		vo.setMno(5);
		vo.setBno(5);
		vo.setContent("88888888888시");
		
		service.regist(vo);
	}
	
	@Test
	public void testModify() throws Exception{
		
		vo.setRno(21);
		vo.setContent("테스트");
		vo.setBno(5);
		
		service.modify(vo);
	}
	
	@Test
	public void testRemove() throws Exception{
		
		vo.setBno(5);
		vo.setRno(21);
		
		service.remove(vo);
	}

}
