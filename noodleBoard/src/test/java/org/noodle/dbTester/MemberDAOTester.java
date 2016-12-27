package org.noodle.dbTester;
 
import javax.inject.Inject;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.noodle.domain.MemberVO;
import org.noodle.persistence.MemberDAO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class MemberDAOTester {

	@Inject
	private MemberDAO dao;
	
	@Test
	public void createTest()throws Exception{
		
		MemberVO vo = new MemberVO();
		
		vo.setUserid("user04");
		vo.setUserpw("user04");
		vo.setUsername("lee4");
		vo.setNickname("lee4");
		vo.setEmail("lee@d");
		vo.setPicture("picture");
		
		dao.create(vo);
	}
	
	@Test
	public void readTest()throws Exception{
		
		dao.read(3);
		System.out.println(dao.read(3));
	}
	
	@Test
	public void updateTest()throws Exception{
		
		MemberVO vo = new MemberVO();
		
		vo.setMno(2);
		vo.setUserpw("123");
		vo.setUsername("fix");
		vo.setNickname("fix");
		vo.setEmail("fix");
		vo.setPicture("picture");
		
		dao.update(vo);
		
		
	}
	@Test
	public void deleteTest()throws Exception{
		
		dao.delete(4);
	}
	

}
