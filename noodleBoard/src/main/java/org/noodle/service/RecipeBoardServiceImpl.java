package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.noodle.persistence.RecipeCuisineDAO;
import org.noodle.persistence.RecipeImageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeBoardServiceImpl implements RecipeBoardService {

	@Autowired
	private RecipeBoardDAO dao;
	
	@Autowired
	private RecipeImageDAO idao;
	
	@Autowired
	private RecipeCuisineDAO cdao;
	
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
	@Transactional
	public void remove(RecipeBoardVO vo) throws Exception {
		
		dao.delete(vo.getBno());
		idao.bnoDelete(vo.getBno());
		cdao.bnoDelete(vo.getBno());
	}

	@Override
	public List<RecipeBoardVO> listAll(PageVO vo) throws Exception {
		
		return dao.listAll(vo);
	}

	@Override
	public List<RecipeBoardVO> search(Criteria cri) throws Exception {
		
//		return dao.search(cri);
		return null;
	}



	@Override
	public void addLikeCount(Integer bno) throws Exception {

		dao.addLikeCount(bno);
	}

	@Override
	public void minusLikeCount(Integer bno) throws Exception {

		dao.minusLikeCount(bno);
	}


	@Override
	public void register(RecipeBoardVO vo, List<RecipeImageVO> ilist, List<RecipeCuisineVO> clist) throws Exception {
		
		dao.create(vo);

		
	}

}
