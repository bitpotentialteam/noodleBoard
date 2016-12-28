package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.noodle.persistence.WikiDAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WikiServiceImpl implements WikiServcie {

	@Autowired
	WikiDAOImpl dao;
	
	@Override
	public List<NoodleVO> listWiki(Criteria cri) throws Exception {
		
		return dao.listWiki(cri);
	}

	@Override
	public NoodleVO read(NoodleVO vo) throws Exception {
		
		return dao.read(vo);
	}

}
