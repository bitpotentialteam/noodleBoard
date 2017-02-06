package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;
import org.noodle.persistence.RecipeCuisineDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RecipeCuisineServiceImpl implements RecipeCuisineService {

	@Autowired
	private RecipeCuisineDAO dao;
	
	@Override
	public void regist(RecipeCuisineVO vo) throws Exception {
			dao.create(vo);
	}

	@Override
	public List<RecipeCuisineVO> view(Integer bno) throws Exception {
		
		return dao.read(bno);
	}

	@Override
	public void modify(RecipeCuisineVO vo) throws Exception {

		dao.update(vo);
	}

	@Override
	public void remove(Integer bno) throws Exception {

		dao.delete(bno);
	}


	@Override
	public RecipeCuisineVO viewSteps(RecipeCuisineVO vo) throws Exception {

		return dao.readStep(vo);
	}

	@Override
	public Integer stepRead(Integer bno) throws Exception {
		return dao.stepRead(bno);
	}

}
