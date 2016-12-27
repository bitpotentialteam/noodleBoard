package org.noodle.service;

import javax.inject.Inject;

import org.noodle.domain.MemberVO;
import org.noodle.persistence.MemberDAO;
import org.springframework.stereotype.Service;

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

}
