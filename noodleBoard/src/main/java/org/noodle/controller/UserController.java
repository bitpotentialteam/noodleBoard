package org.noodle.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.noodle.domain.MemberVO;
import org.noodle.service.MemberService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private MemberService service;

//	@GetMapping("/login")
//	public void login() throws Exception {
//
//		logger.info("login page called.....");
//
//	}
//
//	@PostMapping("/login")
//	public String postLogin(MemberVO vo, Model model, HttpSession session) throws Exception {
//
//		MemberVO login = service.login(vo);
//
//		if (login != null) {
//			model.addAttribute("value", vo);
//			session.setAttribute("LOGIN", vo);
//
//			return "redirect:../";
//
//		} else {
//			return "redirect:../user/login";
//		}
//
//	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(Model model, HttpSession session)throws Exception{
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		service.read1(user.toString());
		MemberVO vo = service.read1(user.toString());
		
		session.setAttribute("VO", vo);
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Model model)throws Exception{
		
		
		return "redirect:/user/modify";
	}

	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void readGET(Model model, HttpSession session) throws Exception {

		
		logger.info("myPage page...");
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		service.read1(user.toString());
		MemberVO vo = service.read1(user.toString());
		
		session.setAttribute("VO", vo);
		
	}
	
	@GetMapping("/login")
	public void loginGET(HttpSession session,MemberVO vo)throws Exception{
		logger.info("login get...");
		
		session.setAttribute("LOGIN", "success");	
	}
	
	
	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(MemberVO vo, Model model) throws Exception {
		
		logger.info("register...");
	}
	
	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo) throws Exception {
		
		logger.info("regist post....");
		logger.info(vo.toString());
		
		service.regist(vo);
		
		return "redirect:/user/login";
	}

}
