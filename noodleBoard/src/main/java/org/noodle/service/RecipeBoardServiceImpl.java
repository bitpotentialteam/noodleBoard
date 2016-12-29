package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeBoardServiceImpl implements RecipeBoardService {

	@Autowired
	private RecipeBoardDAO dao;
	
	@Override
	public void regist(RecipeBoardVO vo) throws Exception {
		
		dao.create(vo);
	}

	//@Transactional
	@Override
	public RecipeBoardVO view(Integer bno) throws Exception {
		
		dao.addViewCount(bno);
		
		return dao.read(bno);
	}

	@Override
	public void modify(RecipeBoardVO vo) throws Exception {
		
		dao.update(vo);
	}

	@Override
	public void remove(Integer bno) throws Exception {
		
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



	@Override
	public void addLikeCount(Integer bno) throws Exception {

		dao.addLikeCount(bno);
	}

	@Override
	public void minusLikeCount(Integer bno) throws Exception {

		dao.minusLikeCount(bno);
	}



}
