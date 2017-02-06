package org.noodle.service;

import java.util.List;

import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.persistence.RecipeCuisineDAO;
import org.noodle.persistence.RecipeImageDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class RecipeImageServiceImpl implements RecipeImageService {

	@Autowired
	private RecipeImageDAO dao;
	
	@Autowired
	private RecipeCuisineDAO cdao;
	
	@Override
	public void regist(RecipeImageVO vo) throws Exception {
			dao.create(vo);
	}

	@Override
	public RecipeImageVO view(Integer ino) throws Exception {

		return dao.read(ino);
	}

	@Override
	public void remove(Integer ino) throws Exception {

		dao.delete(ino);
	}

	@Override
	public RecipeImageVO viewSteps(RecipeImageVO vo) throws Exception {

		return dao.readStep(vo);
	}

	
	@Override
	public List<RecipeImageVO> viewBno(Integer bno) throws Exception {

		return dao.readBno(bno);
	}

	@Override
	public Integer viewThumbnail(String thumbnail) throws Exception {

		return dao.readName(thumbnail);
	}

	@Override
	public List<RecipeImageVO> listAll() throws Exception {
		return dao.readAll();
	}

	@Override
	@Transactional
	public void register(List<RecipeImageVO> ilist, List<RecipeCuisineVO> clist) throws Exception {
		for (RecipeCuisineVO recipeCuisineVO : clist) {
			cdao.create(recipeCuisineVO);
		}
		for (RecipeImageVO recipeImageVO : ilist) {
			dao.create(recipeImageVO);
		}
	}

	@Override
	@Transactional
	public void deletes(Integer ino, RecipeCuisineVO cvo) throws Exception {
			cdao.deletes(cvo);
			dao.delete(ino);
	}


}
