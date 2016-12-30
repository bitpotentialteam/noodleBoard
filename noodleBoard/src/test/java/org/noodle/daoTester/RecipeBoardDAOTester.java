package org.noodle.daoTester;

import javax.inject.Inject;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeBoardDAOTester {

	@Inject
	private RecipeBoardDAO dao;
	
	private RecipeBoardVO vo;
	private PageVO pvo;
	
	@Before
	public void setup() throws Exception{
		vo = new RecipeBoardVO();
		pvo = new PageVO();
	}

	
	@Test
	public void testCreate() throws Exception {

		vo.setMno(3);
		vo.setIno(3);
		vo.setTitle("test");
		vo.setContent("test");
		vo.setMaterialContent("test");

		dao.create(vo);
	}

	@Test
	public void testRead() throws Exception {
		System.out.println(dao.read(10));
	}
	@Test
	public void testAddViewCount() throws Exception{
		dao.addViewCount(3);
	}
	

	@Test
	public void testUpdate() throws Exception {

		vo.setMno(25);
		vo.setIno(25);
		vo.setTitle("25TEST");
		vo.setContent("25TEST");
		vo.setMaterialContent("25TEST");
		vo.setBno(10);

		dao.update(vo);

	}

	@Test
	public void testDelete() throws Exception {
		
		dao.delete(10);
	}
	
	@Test
	public void testListAll() throws Exception{
		
		pvo.setPage(1);
		
		System.out.println(dao.listAll(pvo));
	}

}
