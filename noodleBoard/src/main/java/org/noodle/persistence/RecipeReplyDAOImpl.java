package org.noodle.persistence;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.RecipeReplyVO;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeReplyDAOImpl implements RecipeReplyDAO {
	
	@Inject
	private SqlSession session;
	
	private static final String NAME = "org.noodle.mapper.RecipeReplyMapper";

	@Override
	public void create(RecipeReplyVO vo) throws Exception {
		session.insert(NAME + ".create", vo);
	}

	@Override
	public void update(RecipeReplyVO vo) throws Exception {
		session.update(NAME + ".update", vo);
	}

	@Override
	public void delete(int rno) throws Exception {
		session.delete(NAME + ".delete", rno); 
	}

	@Override
	public List<RecipeReplyVO> listAll() throws Exception {
		return session.selectList(NAME + ".listAll");
	}

}
