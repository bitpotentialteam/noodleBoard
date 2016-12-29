package org.noodle.controller;

import org.noodle.domain.TimeReplyVO;
import org.noodle.service.TimeLineService;
import org.noodle.service.TimeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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

	@GetMapping("/")
	public String home()throws Exception{
		logger.info("index called...");
		return "index";
	}
	
	
	@GetMapping("/timeline")
	public String timeLine(Model model) throws Exception {

		logger.info("TIMELINE called.....");

		model.addAttribute("list", service.listView());


		return "timeline/timeline";
		
		
		
		
	}
	
	
	@GetMapping("/wiki")
	public String wiki(Model model) throws Exception {

		logger.info("WIKI called.....");

		return "wiki/wiki";
	}
	
	@GetMapping("/developer/api")
	public String api()throws Exception{
		
		logger.info("api called.....");
		
		return "developer/api" ;
	}
	
}
