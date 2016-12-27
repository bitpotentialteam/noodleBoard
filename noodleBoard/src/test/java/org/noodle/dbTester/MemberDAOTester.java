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
		
		vo.setUserid("user03");
		vo.setUserpw("user03");
		vo.setUsername("lee3");
		vo.setNickname("lee3");
		vo.setEmail("lee@bbbd");
		vo.setPicture("picture");
		
		dao.create(vo);
	}
	

}
