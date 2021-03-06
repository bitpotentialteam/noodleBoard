package org.noodle.persistence;

import java.util.List;

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
	public RecipeImageVO read(Integer ino) throws Exception {

		return session.selectOne(namespace +"read", ino);
	}

	@Override
	public void delete(Integer ino) throws Exception {

		session.delete(namespace + "delete", ino);
	}

	@Override
	public RecipeImageVO readStep(RecipeImageVO vo) throws Exception {

		return session.selectOne(namespace + "readStep", vo);
	}

	@Override
	public void bnoDelete(Integer bno) throws Exception {

		session.delete(namespace + "bnoDelete", bno);
	}

	@Override
	public List<RecipeImageVO> readBno(Integer bno) throws Exception {

		return session.selectList(namespace+"readBno", bno);
	}

	@Override
	public void update(RecipeImageVO vo) throws Exception {
		session.update(namespace+"update", vo);
	}

	@Override
	public Integer readName(String thumbnail) throws Exception {

		return session.selectOne(namespace + "readName", thumbnail);
	}

	@Override
	public List<RecipeImageVO> readAll() throws Exception {
		return session.selectList(namespace + "readAll");
	}

	@Override
	public void deletes(RecipeImageVO vo) throws Exception {
		session.delete(namespace + "delete", vo);
	}

	@Override
	public void modifyCreate(RecipeImageVO vo) throws Exception {
		session.insert(namespace + "modifyCreate", vo);
	}


}
