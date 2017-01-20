package org.noodle.service;

import java.util.List;

import org.noodle.domain.NoodleVO;
import org.noodle.persistence.WikiDAOImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WikiServiceImpl implements WikiServcie {

	@Autowired
	WikiDAOImpl dao;
	
	@Override
	public List<NoodleVO> searchList(String name) throws Exception {
		
		return dao.searchList(name);
	}

	@Override
	public NoodleVO view(String name) throws Exception {
		
		return dao.read(name);
	}

}
