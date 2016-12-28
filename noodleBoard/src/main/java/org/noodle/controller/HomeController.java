package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.service.TimeLineService;
import org.noodle.service.WikiService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Inject
	TimeLineService service;
	@Inject
	WikiService wiki;

	@GetMapping("/")
	public String home()throws Exception{
		logger.info("index called...");
		return "index";
	}
	
	
	@GetMapping("/timeline")
	public String timeLine(Model model) throws Exception {

		logger.info("getTIMELINE.....");

		model.addAttribute("list", service.listView());

		return "timeline/timeline";
	}
	
	@GetMapping("/wiki")
	public String wiki(Model model) throws Exception {

		logger.info("getWIKI.....");

		model.addAttribute("list", service.listView());

		return "timeline/timeline";
	}
}
