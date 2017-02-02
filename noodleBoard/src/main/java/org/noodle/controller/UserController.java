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
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
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
	@ResponseBody
	public void removeURL(@RequestParam("uno")Integer uno) throws Exception{
		
		logger.info("removeURLPOST called......");
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
	

	@PostMapping(value = "/checkID")
	public @ResponseBody String checkID(String userid) throws Exception {
		logger.info("아이디체크중");
		
		return service.checkID(userid);
	}
	
	
	@PostMapping(value = "/checkNick")
	public @ResponseBody String checkNick(String nickname) throws Exception {
		logger.info("닉네임체크중");
		
		return service.checkNick(nickname);
	}

	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public void modifyGET(Model model, HttpSession session) throws Exception {
		logger.info("modifyGET called.....");
	}

	
	@RequestMapping(value = "/modify", method = RequestMethod.POST)
	public String modifyPOST(Model model, MemberVO vo, HttpSession session) throws Exception {
		logger.info("mofify post....");
		logger.info("Modify MemberVO: " + vo);
		
		vo.setMno(service.read1(vo.getUserid()).getMno());
		service.modify(vo);
		
		session.setAttribute("memberVO", service.read(vo.getMno()));
		
		return "redirect:/user/myPage";
	}

	
	@RequestMapping(value = "/myPage", method = RequestMethod.GET)
	public void myPageGET(Model model, HttpSession session) throws Exception {
		logger.info("myPageGET page...");
	}

	
	@GetMapping("/login")
	public void loginGET(HttpSession session) throws Exception {
		logger.info("login get...");
	}
	
	
	@GetMapping("/login_duplicate")
	public void login_duplicate()throws Exception{
		logger.info("중복로그인");	
	}
	

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public void registerGET(MemberVO vo, Model model) throws Exception {
		logger.info("register...");
	}
	

	@RequestMapping(value = "/register", method = RequestMethod.POST)
	public String registPOST(MemberVO vo) throws Exception {
		logger.info("registPOST called.....");
		logger.info("Register MemberVO " + vo);

		if (vo.getPicture().length() == 0) {
			vo.setPicture(null);
		}
		
		if (vo.getUserid().length() == 0  
				|| vo.getUserpw().length() == 0  
				|| vo.getNickname().length() == 0  
				|| vo.getEmail().length() == 0){
			
			return  "redirect:/user/register";
		}

		service.regist(vo);

		return "redirect:/user/login";
	}

}// end class...
