package org.noodle.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class WikiDAOImpl implements WikiDAO {
	 
	@Autowired 
	SqlSession session;
	
	private static final String namespace = "org.noodle.mapper.WikiMapper";

	@Override
	public List<NoodleVO> listWiki(Criteria cri) throws Exception {
		
		return session.selectList(namespace + ".search", cri);
	}

	@Override
	public NoodleVO read(NoodleVO vo) throws Exception {
		
		return session.selectOne(namespace + ".read", vo);
	}

}
