package org.noodle.service;

import java.util.List;

import org.noodle.domain.TimeReplyVO;

public interface TimeReplyService {
	
	
	public void regist(TimeReplyVO vo)throws Exception;
	public void modify(TimeReplyVO vo)throws Exception;
	public void remove (TimeReplyVO vo)throws Exception;
	public List<TimeReplyVO> listReply(Integer tno)throws Exception;

	//댓글번호로 댓글 하나 읽어오기
	public TimeReplyVO read(Integer trno)throws Exception; 

}
