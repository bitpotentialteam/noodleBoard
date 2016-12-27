package org.noodle.persistence;


import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;
import org.springframework.stereotype.Repository;
@Repository
public class RecipeBoardDAOImpl implements RecipeBoardDAO {

	@Inject
	private SqlSession session;
	
	private static final String namespace = "org.noodle.mapper.RecipeMapper"; 
	
	@Override
	public void create(RecipeBoardVO vo) throws Exception {
		session.selectOne(namespace + ".create", vo);
	}

	@Override
	public RecipeBoardVO read(int bno) throws Exception {
		return session.selectOne(namespace + ".read", bno);
	}

	@Override
	public void update(RecipeBoardVO vo) throws Exception {
		session.update(namespace + ".update", vo);
	}

	@Override
	public void delete(int bno) throws Exception {
		session.delete(namespace + ".delete", bno);
	}

	@Override
	public List<RecipeBoardVO> listAll() throws Exception {
		return session.selectList(namespace + ".listAll");
	}

	@Override
	public List<RecipeBoardVO> search(Criteria cri) throws Exception {
		return session.selectList(namespace + ".saerch", cri);
	}

}
