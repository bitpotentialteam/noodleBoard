package org.noodle.daoTester;



import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeReplyVO;
import org.noodle.persistence.RecipeReplyDAO;
import org.noodle.service.RecipeReplyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeReplyDAOTester {

	@Autowired
	private RecipeReplyDAO dao;
	
	@Autowired
	private RecipeReplyService rseervice;
	
	private RecipeReplyVO vo;
	
	@Before
	public void setup() throws Exception{
		vo = new RecipeReplyVO();
	}
	
	
	@Test
	public void testCreate() throws Exception {

		vo.setMno(5);
		vo.setBno(5);
		vo.setContent("test");
		
		dao.create(vo);

	}
	
	@Test
	public void serviceCreate() throws Exception{
		vo.setBno(1);
		vo.setMno(192);
		vo.setRno(1);
		vo.setRrno(1);
		vo.setSeq(0);
		vo.setContent("test");
		
		
		
	}

	@Test
	public void testUpdate() throws Exception {

		vo.setRno(17);
		vo.setContent("테스트");
		vo.setBno(5);

		dao.update(vo);
	}

	@Test
	public void testDelete() throws Exception {
		
		dao.delete(17);
	}

	@Test
	public void testListAll() throws Exception {
		
		System.out.println(dao.listAll(13));
	}

}
