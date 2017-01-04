package org.noodle.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.URLVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class URLDAOImpl implements URLDAO{

	@Autowired
	SqlSession session;
	
	private static final String namespace = "org.noodle.URLMapper.";
	
	@Override
	public void create(URLVO vo) throws Exception {

		session.insert(namespace + "create", vo);
	}

	@Override
	public void update(URLVO vo) throws Exception {

		session.update(namespace + "update", vo);
	}

	@Override
	public void delete(Integer uno) throws Exception {

		session.delete(namespace + "delete", uno);
	}

	@Override
	public List<URLVO> listAll(Integer mno) throws Exception {

		return session.selectList(namespace + "listAll", mno);
	}

}
