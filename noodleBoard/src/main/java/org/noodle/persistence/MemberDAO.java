package org.noodle.persistence;

import org.noodle.domain.MemberVO;

public interface MemberDAO {

	public void create(MemberVO vo)throws Exception;
	public MemberVO read(int mno)throws Exception;
	public void update(MemberVO vo)throws Exception;
	public void delete(int mno)throws Exception;
	
	public void create_client(Integer mno) throws Exception;
	public void delete_client(Integer mno) throws Exception; 
}
