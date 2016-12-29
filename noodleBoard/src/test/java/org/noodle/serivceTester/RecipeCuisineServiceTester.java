package org.noodle.serivceTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.service.RecipeCuisineService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeCuisineServiceTester {

	@Autowired
	RecipeCuisineService service;
	
	RecipeCuisineVO vo;
	
	@Before
	public void setup() {
		vo = new RecipeCuisineVO();
	}
	
	@Test
	public void testRegist() throws Exception{

		vo.setBno(4);
		vo.setStep(4);
		vo.setContent("TEST CONTENT");
		
		service.regist(vo);
	}
	
	@Test
	public void testView() throws Exception{
		
		System.out.println(service.view(1));
		
	}
	
	@Test
	public void testModify() throws Exception{
		
		vo.setStep(4);
		vo.setContent("CONTENTCONETNTNTN");
		vo.setBno(4);
		
		service.modify(vo);
	}

	@Test
	public void testRemove() throws Exception{
		
		service.remove(1);
	}
	
	@Test
	public void testViewSteps() throws Exception{
		
		vo.setBno(4);
		vo.setStep(4);
		
		System.out.println(service.viewSteps(vo));
	}
}
