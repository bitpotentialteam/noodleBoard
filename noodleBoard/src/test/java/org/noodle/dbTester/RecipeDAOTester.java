package org.noodle.dbTester;



import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeDAOTester {
	
	@Inject
	private RecipeBoardDAO dao;

	@Test
	public void createTest() throws Exception {
		RecipeBoardVO vo = new RecipeBoardVO();
		
		vo.setMno(2);
		vo.setBno(2);
		vo.setThumbnail(2);
		vo.setTitle("test");
		
		dao.create(vo);
	}
	
	@Test
	public void readTest() throws Exception{
		System.out.println(dao.read(2));
	}
	
	@Test
	public void updateTest() throws Exception{
		RecipeBoardVO vo = new RecipeBoardVO();
		
		vo.setMno(2);
		vo.setTitle("제목");
		vo.setThumbnail(2);
		vo.setBno(1);
		
		dao.update(vo);
		
	}
	
	@Test
	public void deleteTest() throws Exception{
		dao.delete(2);
	}
	
	@Test
	public void listAllTest() throws Exception{
		System.out.println();
		
	}
	
	
	

}
