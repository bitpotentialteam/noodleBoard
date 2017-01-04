package org.noodle.service;

import java.util.List;

import org.noodle.domain.URLVO;

public interface URLService {

	
	public void regist(URLVO vo) throws Exception;
	public void modify(URLVO vo) throws Exception;
	public void remove(Integer uno) throws Exception;
	
	public List<URLVO> listAll(Integer mno) throws Exception;
}
