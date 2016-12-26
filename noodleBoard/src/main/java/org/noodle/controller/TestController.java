package org.noodle.controller;

import org.noodle.domain.Criteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TestController {

	private static final Logger logger = LoggerFactory.getLogger(TestController.class);

	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String apiGET(Model model, Criteria cri) {
		logger.info("apiGET.....");

		cri.setBrandFilter("test");
		
		logger.info(cri.getBrandFilter());
		
		return "developer/api";
	}

}
