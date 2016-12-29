package org.noodle.daoTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.persistence.RecipeCuisineDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeCuisineDAOTester {

	@Autowired
	RecipeCuisineDAO dao;
	
	RecipeCuisineVO vo;
	
	@Before
	public void set(){
		vo = new RecipeCuisineVO();
	}
	
	@Test
	public void testCreate() throws Exception{

		vo.setBno(2);
		vo.setStep(3);
		vo.setContent("TEST CONTENT");
		
		dao.create(vo);
	}
	
	@Test
	public void testRead() throws Exception{
		
		System.out.println(dao.read(1));
	}
	
	@Test
	public void testUpdate() throws Exception{
		
		vo.setStep(3);
		vo.setContent("CONTENTCONETNTNTN");
		vo.setBno(1);
		
		dao.update(vo);
	}

	@Test
	public void testDelete() throws Exception{
		
		dao.delete(1);
	}
	
	@Test 
	public void testReadStep() throws Exception{
		
		vo.setBno(1);
		vo.setStep(2);
		
		System.out.println(dao.readStep(vo));
	}
}
