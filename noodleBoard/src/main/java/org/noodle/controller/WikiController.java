package org.noodle.controller;

import org.noodle.domain.Criteria;
import org.noodle.service.WikiServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/wiki/*")
public class WikiController {
	
	@Autowired
	WikiServiceImpl service;
	

	@PostMapping("/list")
	@ResponseBody
	public String listView(@RequestParam(value="valueArrTest[]") String[] valueArr)throws Exception{
		
		Criteria cri = new Criteria();

		service.listWiki(cri);
		
		return "redirect:/wiki";
		
	}

}
