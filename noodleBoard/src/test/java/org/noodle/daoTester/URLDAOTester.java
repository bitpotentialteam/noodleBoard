package org.noodle.daoTester;


import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.URLVO;
import org.noodle.persistence.URLDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class URLDAOTester {

	@Autowired
	private URLDAO dao;
	
	private URLVO vo;
	
	@Before
	public void setup(){
		vo = new URLVO();
	}
	
	@Test
	public void testCreate() throws Exception{

		vo.setMno(1);
		vo.setUrl("JUNIT Test...");
		
		dao.create(vo);
	}

	@Test
	public void testUpdate() throws Exception{
		
		vo.setUno(1);
		vo.setUrl("UPDATE Test....");
		
		dao.update(vo);
	}

	@Test
	public void testDelete() throws Exception{
		
		dao.delete(1);
	}
	
	@Test
	public void testListAll() throws Exception{
		
		System.out.println(dao.listAll(1));
	}
}
