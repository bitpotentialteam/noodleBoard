package org.noodle.persistence;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.RecipeCuisineVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeCuisineDAOImpl implements RecipeCuisineDAO {

	@Autowired
	SqlSession session;
	
	private static final String namespace = "org.noodle.RecipeCuisineMapper.";
	
	@Override
	public void create(RecipeCuisineVO vo) throws Exception {

		session.insert(namespace + "create", vo);
	}

	@Override
	public RecipeCuisineVO read(int bno) throws Exception {

		return session.selectOne(namespace + "read", bno);
	}

	@Override
	public void update(RecipeCuisineVO vo) throws Exception {

		session.update(namespace + "update", vo);
	}

	@Override
	public void delete(int bno) throws Exception {

		session.delete(namespace + "delete", bno);
	}

}