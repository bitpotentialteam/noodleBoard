package org.noodle.persistence;

import java.util.List;

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
	public void create(List<RecipeCuisineVO> list) throws Exception {

		session.insert(namespace + "create", list);
	}

	@Override
	public RecipeCuisineVO read(Integer bno) throws Exception {

		return session.selectOne(namespace + "read", bno);
	}

	@Override
	public void update(RecipeCuisineVO vo) throws Exception {

		session.update(namespace + "update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {

		session.delete(namespace + "delete", bno);
	}


	@Override
	public RecipeCuisineVO readStep(RecipeCuisineVO vo) throws Exception {
		
		return session.selectOne(namespace + "readStep", vo);
	}

	@Override
	public void bnoDelete(Integer bno) throws Exception {

		session.delete(namespace + "bnoDelete", bno);
	}

}
