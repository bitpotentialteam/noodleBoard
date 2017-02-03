package org.noodle.persistence;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.noodle.domain.RecipeReplyVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class RecipeReplyDAOImpl implements RecipeReplyDAO {
	
	@Autowired
	private SqlSession session;
	
	private static final String NAME = "org.noodle.RecipeReplyMapper.";

	@Override
	public void create(RecipeReplyVO vo) throws Exception {
		session.insert(NAME + "create", vo);
	}

	@Override
	public void update(RecipeReplyVO vo) throws Exception {
		session.update(NAME + "update", vo);
	}

	@Override
	public void delete(Integer rno) throws Exception {
		session.delete(NAME + "delete", rno); 
	}

	@Override
	public List<RecipeReplyVO> listAll(Integer bno) throws Exception {
		return session.selectList(NAME + "listAll", bno);
	}

	@Override
	public List<RecipeReplyVO> readSeq(Integer rrno) throws Exception {
		return session.selectList(NAME + "readSeq", rrno);
	}

	@Override
	public void rrnoUpdate(Integer rno) throws Exception {
		session.update(NAME + "rrnoUpdate", rno);
	}

	@Override
	public Integer rnoCurrval() throws Exception {
		return session.selectOne(NAME + "rnoCurrval");
	}

	@Override
	public void deleteRrno(Integer rrno) throws Exception {

		session.delete(NAME + "deleteRrno", rrno);
	}

	@Override
	public void deleteBno(Integer bno) throws Exception {

		session.delete(NAME + "deleteBno", bno);
	}

	@Override
	public void seqUpdate(Integer rno) throws Exception {
		session.update(NAME + "seqUpdate", rno);
	}

	@Override
	public RecipeReplyVO read(Integer rno) throws Exception {
		return session.selectOne(NAME + "read", rno);
	}

	@Override
	public List<RecipeReplyVO> readNickname(Integer bno) throws Exception {
		return session.selectList(NAME + "readNickname", bno);
	}

}
