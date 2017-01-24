package org.noodle.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.noodle.domain.NoodleVO;
import org.noodle.service.WikiServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/wiki")
public class WikiController {
	
	private static final Logger logger = LoggerFactory.getLogger(WikiController.class);

	
	@Autowired
	WikiServiceImpl service;
	
	@GetMapping("/d")
	public String demo(){
		return "wiki/demo";
	}
	
	@GetMapping()
	public String index_search(){
		logger.info("wiki called.....");
		
		return "wiki/wiki";
	}

	@PostMapping("/list")
	@ResponseBody
	public List<NoodleVO> list(String name){
		logger.info("Wiki list called......");
		
		try {
			logger.info("name: " + name);
			logger.info("list: " + service.searchList(name));
			
			return service.searchList(name);
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		
	}// end list...
	
	@GetMapping("/view")
	public void viewGET(){
		logger.info("Wiki viewGET called.....");
	}

	@PostMapping("/view/{name}")
	public String viewPOST(@PathVariable("name") String name, HttpSession session){
		logger.info("Wiki viewPOST called.....");
		
		try {
			logger.info("name: " + name);
			session.setAttribute("view", service.view(name));
			
			return "/wiki/view";
			
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}// end viewPOST...
}// end class...
