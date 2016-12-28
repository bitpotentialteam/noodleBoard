package org.noodle.persistence;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;

public interface WikiDAO {
	
	//검색결과화면
	public List<NoodleVO> listWiki(Criteria cri) throws Exception;
	
	//검색결과 view 화면
	public NoodleVO read(NoodleVO vo)throws Exception;

}
