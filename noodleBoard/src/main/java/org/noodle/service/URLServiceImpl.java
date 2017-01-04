package org.noodle.service;

import java.util.List;

import org.noodle.domain.URLVO;
import org.noodle.persistence.URLDAO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class URLServiceImpl implements URLService{

	@Autowired
	private URLDAO dao;
	
	@Override
	public void regist(URLVO vo) throws Exception {

		dao.create(vo);
	}

	@Override
	public void modify(URLVO vo) throws Exception {

		dao.update(vo);
	}

	@Override
	public void remove(Integer uno) throws Exception {

		dao.delete(uno);
	}

	@Override
	public List<URLVO> listAll(Integer mno) throws Exception {

		return dao.listAll(mno);
	}
	
	

}
