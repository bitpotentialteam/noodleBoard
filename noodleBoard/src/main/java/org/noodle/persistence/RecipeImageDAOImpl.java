package org.noodle.persistence;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.RecipeImageVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeImageDAOImpl implements RecipeImageDAO {

	@Autowired
	SqlSession session;
	
	private static final String namespace = "org.noodle.RecipeImageMapper.";
	
	
	@Override
	public void create(RecipeImageVO vo) throws Exception {

		session.insert(namespace + "create", vo);
	}

	@Override
	public RecipeImageVO read(Integer bno) throws Exception {

		return session.selectOne(namespace +"read", bno);
	}

	@Override
	public void delete(Integer bno) throws Exception {

		session.delete(namespace + ".delete", bno);
	}

}
