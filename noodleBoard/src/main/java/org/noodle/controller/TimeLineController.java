package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.service.TimeLineService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;


@Controller("/")
public class TimeLineController {
	
	@Inject
	TimeLineService service;

	private static final Logger logger = LoggerFactory.getLogger(NoodleController.class);

	@GetMapping("/timeline")
	public String timeLine() throws Exception{

		logger.info("getTIMELINE.....");

		return "timeline/timeline";
	}

}
