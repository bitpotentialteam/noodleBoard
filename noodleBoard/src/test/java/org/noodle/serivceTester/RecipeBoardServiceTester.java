package org.noodle.serivceTester;

import static org.junit.Assert.fail;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.service.RecipeBoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeBoardServiceTester {

	@Autowired
	RecipeBoardService service;
	
	RecipeBoardVO vo;
	
	@Before
	public void setup(){
		vo = new RecipeBoardVO();
	}
	
	@Test
	public void testRegist() throws Exception{

		vo.setMno(3);
		vo.setIno(3);
		vo.setTitle("ST");
		vo.setContent("ST");
		vo.setMaterialContent("ST");
		
		service.regist(vo);
	}
	
	@Test
	public void testRead() throws Exception{
		
		System.out.println(service.view(3));
	}

}
