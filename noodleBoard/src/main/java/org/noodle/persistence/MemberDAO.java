package org.noodle.persistence;

import org.noodle.domain.MemberVO;

public interface MemberDAO {

	public void create(MemberVO vo)throws Exception;
	public MemberVO read(int mno)throws Exception;
	public void update(MemberVO vo)throws Exception;
	public void delete(int mno)throws Exception;
	
	public MemberVO read1(String userid)throws Exception;
	public MemberVO readNick(String nickname) throws Exception;
	
	public MemberVO login(MemberVO vo)throws Exception;
	public String checkID(String userid)throws Exception;
	public String checkNick(String nickname)throws Exception;
	
	public void create_client(Integer mno) throws Exception;
	public void delete_client(Integer mno) throws Exception; 
}
