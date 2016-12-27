package org.noodle.controller;


import java.util.ArrayList;
import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class NoodleController {
	
	
	private static final Logger logger = LoggerFactory.getLogger(NoodleController.class);
	
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String apiGET(Model model, Criteria cri) {
		logger.info("apiGET.....");
		
		String[] test = {"test"};

		cri.setBrandFilter(test);
		
		
		return "developer/api";
	}
	
	@PostMapping("/brands/{brand}")
	public void brandsPOST(@PathVariable("brand") String brand) throws Exception{
		logger.info("brands POST.....");
		
			logger.info(brand);
		
	}
	
	//test
	@GetMapping("/index")
	public String index() throws Exception{
		logger.info("index called.....");
		
		return "index";	
		
	}
	

	

	
	
	
}
