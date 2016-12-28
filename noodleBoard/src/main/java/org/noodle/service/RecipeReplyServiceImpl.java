package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.noodle.persistence.RecipeReplyDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeReplyServiceImpl implements RecipeReplyService {
	
	@Autowired
	private RecipeReplyDAO dao;

	@Autowired
	private RecipeBoardDAO bdao;
	
	@Override
	@Transactional
	public void regist(RecipeReplyVO vo) throws Exception {

		bdao.addReplyCount(vo.getBno());
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
