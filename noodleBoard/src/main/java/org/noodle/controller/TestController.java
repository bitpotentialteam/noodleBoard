package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import org.noodle.domain.Criteria;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RestController;


@RestController
public class TestController {
	
	private static final Logger logger = LoggerFactory.getLogger(TestController.class);
	
	
	@GetMapping("/search")
	public List<String> search(@ModelAttribute("cri") Criteria cri)throws Exception{
	
		logger.info("search called..." + cri.toString());
		
		List<String> list = new ArrayList<String>();
		
		for(int i = 0; i < 50; i++){
			
			list.add("test" + i);
		}
		
		return list;
	}


}
