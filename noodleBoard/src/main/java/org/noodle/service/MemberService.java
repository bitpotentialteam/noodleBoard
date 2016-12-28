package org.noodle.service;

import org.noodle.domain.MemberVO;

public interface MemberService {

	public void regist(MemberVO vo)throws Exception;
	public MemberVO read(int mno)throws Exception;
	public void modify(MemberVO vo)throws Exception;
	public void remove(int mno)throws Exception;
	
	public void regist_client(Integer mno) throws Exception;
	public void remove_client(Integer mno) throws Exception; 

}
