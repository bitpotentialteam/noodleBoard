package org.noodle.service;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;

public interface wikiService {
	
	public List<NoodleVO> listWiki(Criteria cri) throws Exception;
	public NoodleVO view(NoodleVO vo)throws Exception;

}
