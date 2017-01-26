package org.noodle.controller;

import javax.servlet.http.HttpSession;

import org.noodle.domain.MemberVO;
import org.noodle.domain.TimeReplyVO;
import org.noodle.service.MemberService;
import org.noodle.service.TimeLineService;
import org.noodle.service.TimeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	TimeLineService service;

	@Autowired
	TimeReplyService rservice;
	
	@Autowired
	MemberService mservice;

	@GetMapping("/")
	public String home()throws Exception{
		logger.info("index called...");
		return "index";
	}
	
	
	@GetMapping("/timeline")
	public String timeLine(Model model,  HttpSession session) throws Exception {
		
		TimeReplyVO vo = new TimeReplyVO();

		logger.info("TIMELINE called.....");

		model.addAttribute("list", service.listView());
		
		logger.info("myPage page...");
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		mservice.read1(user.toString());
		MemberVO info = mservice.read1(user.toString());
		
		session.setAttribute("VO", info);

		return "timeline/timeline";
		
		
		
		
	}
	
	@GetMapping("/developer/api")
	public String api()throws Exception{
		
		logger.info("api called.....");
		
		return "developer/api" ;
	}
	
}
