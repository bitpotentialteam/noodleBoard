package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.springframework.stereotype.Service;

@Service
public class RecipeBoardServiceImple implements RecipeBoardService {

	@Inject
	private RecipeBoardDAO dao;
	
	@Override
	public void create(RecipeBoardVO vo) throws Exception {

	}

	@Override
	public RecipeBoardVO read(Integer mno) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void update(RecipeBoardVO vo) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public void delete(Integer mno) throws Exception {
		// TODO Auto-generated method stub

	}

	@Override
	public List<RecipeBoardVO> listAll() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<RecipeBoardVO> search(Criteria cri) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
