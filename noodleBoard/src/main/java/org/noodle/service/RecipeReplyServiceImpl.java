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
		vo.setSeq(dao.readSeq(vo.getRrno()).size());
		
		if(vo.getRrno() == null){	// parent...
			dao.create(vo);
			dao.rrnoUpdate(dao.rnoCurrval());
		
		}else{	// child...
			dao.create(vo);
			dao.rrnoUpdate(vo.getRrno());
		}
		
		bdao.addReplyCount(vo.getBno());
		
	}

	@Override
	public void modify(RecipeReplyVO vo) throws Exception {
		dao.update(vo);
	}

	@Override
	@Transactional
	public void remove(RecipeReplyVO vo) throws Exception {
		
		if(vo.getSeq() == 0){	// parent_reply
			
			dao.deleteRrno(vo.getRrno());
	
		}else{	// child_reply
			dao.delete(vo.getRno());
			bdao.minusReplyCount(vo.getBno());
		}
		
	}

	@Override
	public List<RecipeReplyVO> listAll(Integer bno) throws Exception {
		return dao.listAll(bno);
	}

	@Override
	public List<RecipeReplyVO> seqRead(Integer rrno) throws Exception {
		return dao.readSeq(rrno);
	}

	@Override
	public void rrnoModify(Integer rno) throws Exception {
		dao.rrnoUpdate(rno);
	}

	@Override
	public Integer currvalRno() throws Exception {
		return dao.rnoCurrval();
	}



}
