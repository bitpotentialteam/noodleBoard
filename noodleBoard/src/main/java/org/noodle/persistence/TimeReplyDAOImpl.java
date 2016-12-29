package org.noodle.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.TimeReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class TimeReplyDAOImpl implements TimeReplyDAO {

	@Inject 
	SqlSession session;
	
	private static final String namespace = "org.noodle.mapper.TimeReplyMapper";
	
	
	@Override
	public void create(TimeReplyVO vo) throws Exception {
		session.insert(namespace + ".create", vo); 

	}

	@Override
	public void update(TimeReplyVO vo) throws Exception {
		session.update(namespace + ".update", vo);
		
	}

	@Override
	public void delete(Integer trno) throws Exception {
		session.delete(namespace + ".delete", trno); 

	}

	@Override
	public List<TimeReplyVO> listReply(Integer tno) throws Exception {
		
		return session.selectList(namespace + ".listReply", tno);
	}

	@Override
	public TimeReplyVO read(Integer trno) throws Exception {
		
		return session.selectOne(namespace + ".read", trno);
	}

}
