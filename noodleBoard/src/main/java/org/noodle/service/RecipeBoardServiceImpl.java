package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.persistence.RecipeBoardDAOImpl;
import org.springframework.stereotype.Service;

@Service
public class RecipeBoardServiceImpl implements RecipeBoardService {

	@Inject
	private RecipeBoardDAOImpl dao;
	
	@Override
	public void regist(RecipeBoardVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public RecipeBoardVO view(int bno) throws Exception {
		return dao.read(bno);
	}

	@Override
	public void modify(RecipeBoardVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int bno) throws Exception {
		dao.delete(bno);
	}

	@Override
	public List<RecipeBoardVO> listAll() throws Exception {
		return dao.listAll();
	}

	@Override
	public List<RecipeBoardVO> search(Criteria cri) throws Exception {
		return dao.search(cri);
	}

}
