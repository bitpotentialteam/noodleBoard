package org.noodle.persistence;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.MemberVO;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {

	@Inject
	private SqlSession session;
	
	private static final String namespace = "org.noodle.mapper.MemberMapper";
	
	
	@Override
	public void create(MemberVO vo) throws Exception {

		session.insert(namespace+".create",vo);
	}

	@Override
	public MemberVO read(int mno) throws Exception {

		return session.selectOne(namespace+".read",mno);
	}

	@Override
	public void update(MemberVO vo) throws Exception {

		session.update(namespace+".update",vo);
	}

	@Override
	public void delete(int mno) throws Exception {

		session.delete(namespace+".delete",mno);
	}

	@Override
	public void create_client(Integer mno) throws Exception {

		session.insert(namespace + ".create_client", mno);
	}

	@Override
	public void delete_client(Integer mno) throws Exception {

		session.delete(namespace + ".delete_client", mno);
	}

}
