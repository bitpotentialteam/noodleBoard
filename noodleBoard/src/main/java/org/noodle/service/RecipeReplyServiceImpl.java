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
		//rrno의 길이만큼 seq를 읽어서 vo에 담아줌.
		//화면에서 rrno를 넘겨받지 않으면 부모댓글 regist
//		if(vo.getRrno() == null){	// parent...
//			//나머지는 화면에서 받고 
//			dao.create(vo);
//			System.out.println("VVO : " + vo);
//			//rrno에는 rno값을 넣어준다
//			dao.rrnoUpdate(dao.rnoCurrval());
//		//화면에서 rrno를 넘겨 받으면 자식 regist
//		}else{	// child...
//			//나머지는 화면에서 받고
//			dao.create(vo);
//			System.out.println("VVO : "+vo);
//			//rrno에는 부모댓글의 rrno를 넣어준다
//			dao.rrnoUpdate(vo.getRrno());
//		}
		System.out.println("===================");
		System.out.println("VVO : "+vo.getRrno());
		System.out.println("===================");
		
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

	@Override
	public RecipeReplyVO view(Integer rno) throws Exception {
		return dao.read(rno);
	}



}
