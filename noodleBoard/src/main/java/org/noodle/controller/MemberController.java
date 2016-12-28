package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.domain.MemberVO;
import org.noodle.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


@Controller
public class MemberController {

	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	
	@Inject
	private MemberService service;
	
	
	
	@GetMapping("user/login")
	public void login() throws Exception{
		
		logger.info("login page called.....");
		
	}
	@RequestMapping(value = "/user/login", method=RequestMethod.POST)
	public String loginPOST()throws Exception{
		
		logger.info("login...");
		
		return "redirect:../";
	}
	
	@RequestMapping(value = "user/register", method = RequestMethod.GET)
	public void registerGET(MemberVO vo, Model model) throws Exception {

		logger.info("register...");
	}

	@RequestMapping(value = "user/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo) throws Exception {

		logger.info("regist post....");
		logger.info(vo.toString());

		service.regist(vo);

		return "redirect:/user/login";
	}
	
	
}
