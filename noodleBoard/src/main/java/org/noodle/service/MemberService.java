package org.noodle.service;

import org.noodle.domain.MemberVO;

public interface MemberService {

	public void regist(MemberVO vo)throws Exception;
	public MemberVO read(int mno)throws Exception;
	public void modify(MemberVO vo)throws Exception;
	public void remove(int mno)throws Exception;
	
	public MemberVO read1(String userid)throws Exception;
	public MemberVO viewNick(String nickName) throws Exception;
	
	public MemberVO login(MemberVO vo)throws Exception;
	public String checkID(String userid)throws Exception;
	public String checkNick(String nickname)throws Exception;
	
	public String regist_client(Integer mno) throws Exception;
	public String remove_client(Integer mno) throws Exception; 

}
