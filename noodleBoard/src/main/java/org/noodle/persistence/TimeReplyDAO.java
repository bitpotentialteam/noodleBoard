package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.TimeReplyVO;

public interface TimeReplyDAO {
	
	public void create(TimeReplyVO vo)throws Exception;
	public void update(TimeReplyVO vo)throws Exception;
	public void delete (Integer trno)throws Exception;
	public List<TimeReplyVO> listReply(Integer tno)throws Exception;

	//댓글번호로 댓글 하나 읽어오기
	public TimeReplyVO read(Integer trno)throws Exception; 
}
