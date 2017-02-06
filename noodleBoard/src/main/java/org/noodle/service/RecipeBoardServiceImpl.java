package org.noodle.service;

import java.util.List;

import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.domain.SearchVO;
import org.noodle.persistence.RecipeBoardDAO;
import org.noodle.persistence.RecipeCuisineDAO;
import org.noodle.persistence.RecipeImageDAO;
import org.noodle.persistence.RecipeReplyDAO;
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
	
	@Autowired
	private RecipeReplyDAO rdao;
	
	@Override
	public void regist(RecipeBoardVO vo) throws Exception {
		
		dao.create(vo);

		
	}

	@Override
//	@Transactional
	public RecipeBoardVO view(Integer bno) throws Exception {
		
//		dao.addViewCount(bno);
//		return dao.read(bno);
		
		return dao.read(bno);
	}

	@Override
	@Transactional
	public void modify(RecipeBoardVO vo, List<RecipeImageVO> ilist, List<RecipeCuisineVO> clist) throws Exception {
		
		dao.update(vo);
		
		for (RecipeCuisineVO recipeCuisineVO : clist) {
			cdao.update(recipeCuisineVO);
		}
		for (RecipeImageVO recipeImageVO : ilist) {
			idao.update(recipeImageVO);
		}
	}

	@Override
	@Transactional
	public void remove(Integer bno) throws Exception {
		
		dao.delete(bno);
		idao.bnoDelete(bno);
		cdao.bnoDelete(bno);
		rdao.deleteBno(bno);
	}

	@Override
	public List<RecipeBoardVO> listAll(PageVO vo) throws Exception {
		
		return dao.listAll(vo);
	}

	@Override
	public List<RecipeBoardVO> search(SearchVO cri) throws Exception {
		
		return dao.listSearch(cri);
	}



	@Override
	@Transactional
	public void addLikeCount(RecipeBoardVO vo) throws Exception {
		dao.addLikeCount(vo);
		dao.createLike(vo);
	}

	@Override
	public void minusLikeCount(Integer bno) throws Exception {

		dao.minusLikeCount(bno);
	}


	@Override
	@Transactional
	public void register(RecipeBoardVO vo, List<RecipeImageVO> ilist, List<RecipeCuisineVO> clist) throws Exception {
		
		dao.create(vo);
		
		for (RecipeCuisineVO recipeCuisineVO : clist) {
			cdao.create(recipeCuisineVO);
		}
		for (RecipeImageVO recipeImageVO : ilist) {
			idao.create(recipeImageVO);
		}

		
	}
	

	@Override
	public int getTotalCount(SearchVO cri) throws Exception {
		return dao.totalCount(cri);
	}

	@Override
	public List<RecipeBoardVO> listPage(int page) throws Exception {
		return dao.listPage(page);
	}

	@Override
	public void modifyIno(RecipeBoardVO vo) throws Exception {

		dao.updateIno(vo);
	}

	@Override
	public RecipeBoardVO viewTitle(String title) throws Exception {

		return dao.readTitle(title);
	}

	@Override
	public void registLike(RecipeBoardVO vo) throws Exception {
		dao.createLike(vo);
	}

	@Override
	public Integer likeHistory(RecipeBoardVO vo) throws Exception {
		return dao.likeHistory(vo);
	} 

	@Override
	public Integer readLikeCnt(Integer bno) throws Exception {
		return dao.readLikeCnt(bno);
	}

	@Override
	@Transactional
	public void registView(RecipeBoardVO vo) throws Exception {
		dao.createViewCnt(vo);
		dao.addViewCount(vo);
	}

	@Override
	public Integer historyView(RecipeBoardVO vo) throws Exception {
		return dao.viewHistory(vo);
	}

	@Override
	public Integer viewCnt(Integer bno) throws Exception {
		return dao.readViewCnt(bno);
	}

}
