package org.noodle.persistence;


import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.PageVO;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.SearchVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeBoardDAOImpl implements RecipeBoardDAO {

	@Autowired
	private SqlSession session;
	
	private static final String namespace = "org.noodle.RecipeBoardMapper."; 
	
	@Override
	public void create(RecipeBoardVO vo) throws Exception {
		session.selectOne(namespace + "create", vo);
	}

	@Override
	public RecipeBoardVO read(Integer bno) throws Exception {
		
//		Map<String, Object> map = new HashMap<String, Object>();
//		
//		map.put("RecipeBoardVO", new RecipeBoardVO());
//		map.put("RecipeImageVO", new RecipeImageVO());
//		map.put("RecipeCuisineVO", new RecipeCuisineVO());
		
		return session.selectOne(namespace + "read", bno);
	}

	@Override
	public void update(RecipeBoardVO vo) throws Exception {
		session.update(namespace + "update", vo);
	}

	@Override
	public void delete(Integer bno) throws Exception {
		session.delete(namespace + "delete", bno);
	}

	@Override
	public List<RecipeBoardVO> listAll(PageVO vo) throws Exception {
		
		return session.selectList(namespace + "listAll", vo);
	}

	@Override
	public List<RecipeBoardVO> listSearch(SearchVO cri) throws Exception {

		return session.selectList(namespace + "listSaerch", cri);
	}

	@Override
	public void addViewCount(Integer bno) throws Exception {

		session.update(namespace + "addViewCount", bno);
	}

	@Override
	public void addLikeCount(Integer bno) throws Exception {

		session.update(namespace + "addLikeCount", bno);
	}

	@Override
	public void minusLikeCount(Integer bno) throws Exception {

		session.update(namespace + "minusLikeCount", bno);
	}

	@Override
	public void addReplyCount(Integer bno) throws Exception {

		session.update(namespace + "addReplyCount", bno);
	}

	@Override
	public void minusReplyCount(Integer bno) throws Exception {

		session.update(namespace + "minusReplyCount", bno);
	}

	@Override
	public int totalCount(SearchVO cri) throws Exception {
		return session.selectOne(namespace + "totalCount", cri);
	}

	@Override
	public List<RecipeBoardVO> listPage(int page) throws Exception {
		return session.selectList(namespace + "listPage");
	}
	

}
