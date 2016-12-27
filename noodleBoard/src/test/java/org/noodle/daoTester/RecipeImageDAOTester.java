package org.noodle.daoTester;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeImageVO;
import org.noodle.persistence.RecipeImageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeImageDAOTester {

	@Autowired
	RecipeImageDAO dao;
	
	RecipeImageVO vo;
	
	@Before
	public void set(){
		vo = new RecipeImageVO();
	}
	
	@Test
	public void testCreate() throws Exception{
		
		vo.setBno(1);
		vo.setStep(2);
		vo.setImage("TEST IMAGE");
		vo.setThumbnail("TEST THUMBNAIL");
		
		dao.create(vo);
	}

	@Test
	public void testRead() throws Exception{
		
		System.out.println(dao.read(1));
	}
	
	@Test
	public void testDelete() throws Exception{
		
		dao.delete(1);
	}
	
	
}
