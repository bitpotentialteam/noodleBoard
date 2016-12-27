package org.noodle.service;

import org.noodle.domain.MemberVO;

public interface MemberService {

	public void create(MemberVO vo)throws Exception;
	public MemberVO read(int mno)throws Exception;
	public void update(MemberVO vo)throws Exception;
	public void delete(int mno)throws Exception;
	
}
