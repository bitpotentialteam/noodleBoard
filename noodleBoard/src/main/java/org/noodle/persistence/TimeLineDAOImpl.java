package org.noodle.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.TimeLineVO;
import org.springframework.stereotype.Repository;

@Repository
public class TimeLineDAOImpl implements TimeLineDAO {
	
	@Inject 
	SqlSession session;
	
	private static final String namespace = "org.noodle.mapper.TimeLineMapper";

	@Override
	public void create(TimeLineVO vo) throws Exception {
		session.insert(namespace + ".create",vo);

	}

	@Override
	public List<TimeLineVO> listView() throws Exception {
		
		return session.selectList(namespace + ".listView");
	}

	@Override
	public void update(TimeLineVO vo) throws Exception {
		session.update(namespace + ".update",vo);

	}

	@Override
	public void delete(Integer tno) throws Exception {
		
		session.delete(namespace + ".delete",tno);

	}

	@Override
	public void addLikeCnt(Integer tno) throws Exception {
		session.update(namespace + ".addLikeCnt", tno);
		
	}

	@Override
	public void addReplyCnt(Integer tno) throws Exception {
		session.update(namespace + ".addReplyCnt", tno);
		
	}

	@Override
	public void minReplyCnt(Integer tno) throws Exception {
		session.update(namespace + ".minReplyCnt", tno);
		
	}

	@Override
	public TimeLineVO readReplyCnt(Integer tno) throws Exception {
		
		return session.selectOne(namespace + ".readReplyCnt", tno);
	}

	@Override
	public TimeLineVO readLikeCnt(Integer tno) throws Exception {
		
		return session.selectOne(namespace + ".readLikeCnt", tno);
	}


}
