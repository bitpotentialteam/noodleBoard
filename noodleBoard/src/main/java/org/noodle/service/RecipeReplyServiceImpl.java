package org.noodle.service;

import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.RecipeReplyVO;
import org.noodle.persistence.RecipeReplyDAO;
import org.springframework.stereotype.Service;

@Service
public class RecipeReplyServiceImpl implements RecipeReplyService {
	
	@Inject
	private RecipeReplyDAO dao;

	@Override
	public void regist(RecipeReplyVO vo) throws Exception {
		dao.create(vo);
	}

	@Override
	public void modify(RecipeReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	public void remove(int rno) throws Exception {
		dao.delete(rno);
	}

	@Override
	public List<RecipeReplyVO> listAll() throws Exception {
		return dao.listAll();
	}

}
