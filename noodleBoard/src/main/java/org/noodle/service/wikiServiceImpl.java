package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.noodle.persistence.wikiDAOImpl;
import org.springframework.stereotype.Service;

@Service
public class wikiServiceImpl implements wikiService {

	@Inject
	wikiDAOImpl dao;
	
	@Override
	public List<NoodleVO> listWiki(Criteria cri) throws Exception {
		
		return dao.listWiki(cri);
	}

	@Override
	public NoodleVO view(NoodleVO vo) throws Exception {
		
		return dao.read(vo);
	}

}
