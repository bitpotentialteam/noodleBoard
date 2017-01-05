package org.noodle.service;

import javax.inject.Inject;

import org.noodle.domain.MemberVO;
import org.noodle.persistence.MemberDAO;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MemberServiceImpl implements MemberService {

	@Inject
	private MemberDAO dao;
	
	@Override
	public void regist(MemberVO vo) throws Exception {

		dao.create(vo);
	}

	@Override
	public MemberVO read(int mno) throws Exception {

		return dao.read(mno);
	}

	@Override
	public void modify(MemberVO vo) throws Exception {

		
		dao.update(vo);
	}

	@Override
	public void remove(int mno) throws Exception {

		dao.delete(mno);
	}

	@Override
	@Transactional
	public String regist_client(Integer mno) throws Exception {

		if(dao.read(mno).getClient_ID() == null && dao.read(mno).getClient_PW() == null){
			dao.create_client(mno);
			
			return "success";
			
		}else{
			return "fail";
		}
		
		
	}

	@Override
	@Transactional
	public String remove_client(Integer mno) throws Exception {

		if(dao.read(mno).getClient_ID() != null && dao.read(mno).getClient_PW() != null){
			dao.delete_client(mno);
			
			return "success";
		}else{
			return "fail";
		}
		
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
		
		return dao.login(vo);
	}

	@Override
	public MemberVO read1(String userid) throws Exception {

		return dao.read1(userid);
	}

	@Override
	public String checkID(String userid) throws Exception {

		return dao.checkID(userid);
	}

	@Override
	public MemberVO viewNick(String nickName) throws Exception {

		return dao.readNick(nickName);
	}



}
 