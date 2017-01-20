package org.noodle.controller;

import java.util.List;

import org.noodle.domain.Criteria;
import org.noodle.domain.NoodleVO;
import org.noodle.service.WikiServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/wiki/*")
public class WikiController {
	
	private static final Logger logger = LoggerFactory.getLogger(WikiController.class);

	
	@Autowired
	WikiServiceImpl service;
	

	@PostMapping("/list")
	@ResponseBody
	public String list(@RequestParam(value="brandFilter[]") List<String> arr, Model model)throws Exception{
		
		
		Criteria cri = new Criteria();

		List<NoodleVO> list = service.listWiki(cri);
		model.addAttribute("list", list);
		
		logger.info("wikiwiki" + cri);
		logger.info("list" + list);
		
		
		return "redirect:/wiki";
		
	}

}
