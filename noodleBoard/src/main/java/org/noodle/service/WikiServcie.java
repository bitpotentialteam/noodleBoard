package org.noodle.service;

import java.util.List;

import org.noodle.domain.NoodleVO;

public interface WikiServcie {

	//검색결과화면
	public List<NoodleVO> searchList(String name) throws Exception;
	
	//검색결과 view 화면
	public NoodleVO view(String name)throws Exception;
	
}
