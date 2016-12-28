package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.domain.TimeLineVO;
import org.noodle.service.TimeLineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/")
public class TimeLineController {

	@Inject
	TimeLineService service;

	private static final Logger logger = LoggerFactory.getLogger(TimeLineController.class);

	@GetMapping("/timeline")
	public String timeLine(Model model) throws Exception {

		logger.info("getTIMELINE.....");

		model.addAttribute("list", service.listView());

		return "timeline/timeline";
	}
	


	@PostMapping("/regist")
	public String registerPost(TimeLineVO vo) throws Exception {

		logger.info("VO:" + vo);

		service.regist(vo);

		return "redirect:/timeline";

	}

}
