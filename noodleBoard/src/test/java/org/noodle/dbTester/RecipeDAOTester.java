package org.noodle.dbTester;



import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeReplyVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.noodle.persistence.RecipeReplyDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class RecipeDAOTester {
	
	@Inject
	private RecipeBoardDAO dao;
	
	@Inject
	private RecipeReplyDAO rdao;

	@Test
	public void createTest() throws Exception {
		RecipeBoardVO vo = new RecipeBoardVO();
		
		vo.setMno(3);
		vo.setIno(3);
		vo.setTitle("test");
		vo.setContent("test");
		vo.setMaterialContent("test");
		
		dao.create(vo);
	}
	
	@Test
	public void readTest() throws Exception{
		System.out.println(dao.read(2));
	}
	
	@Test
	public void updateTest() throws Exception{
		RecipeBoardVO vo = new RecipeBoardVO();
		
		vo.setMno(22);
		vo.setIno(22);
		vo.setTitle("제목");
		vo.setContent("내용");
		vo.setMaterialContent("재료내용");
		vo.setBno(1);
		
		dao.update(vo);
		
	}
	
	@Test
	public void deleteTest() throws Exception{
		dao.delete(1);
	}
	
	@Test
	public void listAllTest() throws Exception{
		System.out.println(dao.listAll());
	}
	
	
	@Test
	public void replyCreateTest() throws Exception {
		RecipeReplyVO vo = new RecipeReplyVO();
		vo.setMno(1);
		vo.setRno(1);
		vo.setContent("test");
		
		rdao.create(vo);
	}
	
	@Test
	public void replyUpdateTest() throws Exception {
		RecipeReplyVO vo = new RecipeReplyVO();
		
		vo.setMno(3);
		vo.setContent("테스트");
		vo.setRno(1);
		
		rdao.update(vo);
	}
	
	@Test
	public void replyDeleteTest() throws Exception {
		rdao.delete(1);
	}
	
	@Test
	public void replyListAllTest() throws Exception {
		System.out.println(rdao.listAll());
	}
}
