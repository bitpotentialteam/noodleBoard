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

		dao.create(vo);
		bdao.addReplyCount(vo.getBno());
	}

	@Override
	public void modify(RecipeReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	@Transactional
	public void remove(RecipeReplyVO vo) throws Exception {
		
		dao.delete(vo.getRno());
		bdao.minusReplyCount(vo.getBno());
	}

	@Override
	public List<RecipeReplyVO> listAll(Integer bno) throws Exception {
		return dao.listAll(bno);
	}

}
