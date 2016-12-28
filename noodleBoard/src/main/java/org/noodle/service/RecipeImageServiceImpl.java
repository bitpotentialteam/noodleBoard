package org.noodle.service;

import org.noodle.domain.RecipeImageVO;
import org.noodle.persistence.RecipeImageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeImageServiceImpl implements RecipeImageService {

	@Autowired
	private RecipeImageDAO dao;
	
	@Override
	public void regist(RecipeImageVO vo) throws Exception {
			
		dao.create(vo);
	}

	@Override
	public RecipeImageVO view(Integer ino) throws Exception {

		return dao.read(ino);
	}

	@Override
	public void remove(Integer ino) throws Exception {

		dao.delete(ino);
	}

	@Override
	public RecipeImageVO viewSteps(RecipeImageVO vo) throws Exception {

		return dao.readStep(vo);
	}

}
