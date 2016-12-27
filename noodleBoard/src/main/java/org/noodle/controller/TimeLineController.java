package org.noodle.controller;




import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/board/*")
public class TimeLineController {

	private static final Logger logger = LoggerFactory.getLogger(NoodleController.class);

	@RequestMapping(value = "timeline", method = RequestMethod.GET)
	public void timeLine() {

		logger.info("getTIMELINE.....");

	}

}
