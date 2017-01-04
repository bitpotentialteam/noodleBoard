package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.URLVO;

public interface URLDAO {
	
	
	public void create(URLVO vo) throws Exception;
	public void update(URLVO vo) throws Exception;
	public void delete(Integer uno) throws Exception;
	
	public List<URLVO> listAll(Integer mno) throws Exception;

}
