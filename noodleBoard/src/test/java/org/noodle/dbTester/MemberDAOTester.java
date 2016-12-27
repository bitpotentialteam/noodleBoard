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
		
		vo.setUserid("user01");
		vo.setUserpw("user01");
		vo.setUsername("lee");
		vo.setNickname("lee");
		vo.setEmail("lee@aaa");
		
		dao.create(vo);
	}
	

}
