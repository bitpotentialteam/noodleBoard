package org.noodle.serivceTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.BoardList;
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

		vo.setMno(123);
		vo.setIno(123);
		vo.setTitle("ST");
		vo.setContent("ST");
		vo.setMaterialContent("ST");
		
		service.regist(vo);
	}
	
	@Test
	public void testView() throws Exception{
		
		System.out.println(service.view(3));
	}
	
	@Test
	public void testModify() throws Exception{
		BoardList boardList = new BoardList();
		
		vo.setMno(123);
		vo.setIno(123);
		vo.setTitle("25TEST");
		vo.setContent("25TEST");
		vo.setMaterialContent("25TEST");
		vo.setBno(22);
		
		service.modify(vo, boardList.getIlist(), boardList.getClist());
	}
	
	@Test
	public void testRemove() throws Exception{
		
		vo.setBno(22);

		service.remove(102);
	}

}
