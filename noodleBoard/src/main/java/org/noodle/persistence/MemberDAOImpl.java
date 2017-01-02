package org.noodle.persistence;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.MemberVO;
import org.noodle.util.ClientUtils;
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

		Map<String, Object> map = new HashMap<String, Object>();

		map.put("Client_ID", ClientUtils.INSTANCE.addUUID(mno));
		map.put("Client_PW", ClientUtils.INSTANCE.addUUID(mno));
		map.put("mno", mno);
		
		session.update(namespace + ".create_client", map);
	}

	@Override
	public void delete_client(Integer mno) throws Exception {

		session.delete(namespace + ".delete_client", mno);
	}

	@Override
	public MemberVO login(MemberVO vo) throws Exception {
	
		return session.selectOne(namespace + ".login",vo);
	}

	@Override
	public MemberVO read1(String userid) throws Exception {

		return session.selectOne(namespace+".read1",userid);
	}

	@Override
	public String checkID(String userid) throws Exception {

		return session.selectOne(namespace+".checkID",userid);
	}

}
