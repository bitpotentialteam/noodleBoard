package org.noodle.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.noodle.domain.MemberVO;
import org.noodle.domain.URLVO;
import org.noodle.service.MemberService;
import org.noodle.service.URLService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/user/*")
public class UserController {

	private static final Logger logger = LoggerFactory.getLogger(UserController.class);

	@Inject
	private MemberService service;

	@Inject
	private URLService URLService;

	
	@PostMapping("/removeURL")
	public void removeURL(Integer uno) throws Exception{
		logger.info("removeURL");
		
		logger.info("uno: " + uno);
		
		URLService.remove(uno);
	}
	
	@GetMapping("/apiRegister")
	public void apiRegisterGET(Model model, HttpSession session) throws Exception {
		logger.info("apiRegisterGET called.....");
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		
		service.read1(user.toString());
		MemberVO vo = service.read1(user.toString());

		model.addAttribute("list", URLService.listAll(vo.getMno()));
		session.setAttribute("VO", vo);
	}

	@PostMapping("/apiRegister")
	public void apiRegisterPOST(String url) throws Exception {
		logger.info("apiRegisterPOST called.....");
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();

		Integer mno = service.read1(user.toString()).getMno();
		
		URLVO vo = new URLVO();
		
		vo.setMno(mno);
		vo.setUrl(url);
		URLService.regist(vo);
		
		
		

	}

	// @GetMapping("/login")
	// public void login() throws Exception {
	//
	// logger.info("login page called.....");
	//
	// }
	//
	// @PostMapping("/login")
	// public String postLogin(MemberVO vo, Model model, HttpSession session)
	// throws Exception {
	//
	// MemberVO login = service.login(vo);
	//
	// if (login != null) {
	// model.addAttribute("value", vo);
	// session.setAttribute("LOGIN", vo);
	//
	// return "redirect:../";
	//
	// } else {
	// return "redirect:../user/login";
	// }
	//
	// }

	@GetMapping(value = "/create_client")
	public void create_client(Model model) throws Exception {
		logger.info("Create_client called.....");

		Object user = SecurityContextHolder.getContext().getAuthentication().getName();

		Integer mno = service.read1(user.toString()).getMno();

		MemberVO vo = new MemberVO();

		vo.setMno(mno);

		String clientMsg = service.regist_client(mno);
		logger.info("clientMsg: " + clientMsg);

		model.addAttribute("CLIENTMSG", clientMsg);

	}

	@PostMapping(value = "/idCheck")
	public @ResponseBody String checkID(String userid) throws Exception {

		return service.checkID(userid);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(Model model, HttpSession session) throws Exception {
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		service.read1(user.toString());
		MemberVO vo = service.read1(user.toString());

		session.setAttribute("VO", vo);
	}

	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Model model, MemberVO vo) throws Exception {

		logger.info("mofify post....");
		int mno = service.read1(vo.getUserid()).getMno();

		vo.setMno(mno);
		service.modify(vo);

		return "redirect:/";
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
	public void loginGET(HttpSession session, MemberVO vo) throws Exception {
		logger.info("login get...");

		session.setAttribute("LOGIN", "success");
	}
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response)throws Exception{
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if(auth !=null){
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(MemberVO vo, Model model) throws Exception {

		logger.info("register...");
	}

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo) throws Exception {

		logger.info("regist post....");
		logger.info("VO: " + vo.toString());

		if (vo.getPicture().length() == 0) {
			vo.setPicture(null);
		}

		service.regist(vo);

		return "redirect:/user/login";
	}

}
