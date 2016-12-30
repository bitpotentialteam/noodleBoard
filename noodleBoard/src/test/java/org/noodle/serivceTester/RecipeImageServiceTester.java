package org.noodle.serivceTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeImageVO;
import org.noodle.service.RecipeImageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeImageServiceTester {

	@Autowired
	RecipeImageService service;
	
	RecipeImageVO vo;
	
	@Before
	public void setup() {
		vo = new RecipeImageVO();
	}
	
	@Test
	public void testRegist() throws Exception{


//		vo.setBno(4);
//		vo.setStep(4);
//		vo.setStep(4);
//		vo.setImage("퇴ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ근");
//		vo.setThumbnail("퇴ㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣㅣ근");
		
		service.regist(vo);
	}

	@Test
	public void testView() throws Exception{
		
		System.out.println(service.view(6));
	}

	@Test
	public void testRemove() throws Exception{
		
		service.remove(21);
	}
	
	@Test
	public void testViewSteps() throws Exception{
		
		vo.setBno(4);
//		vo.setStep(4);
		
		System.out.println(service.viewSteps(vo));
	}
}

