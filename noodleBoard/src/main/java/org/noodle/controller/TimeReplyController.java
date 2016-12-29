package org.noodle.controller;

import org.noodle.domain.TimeReplyVO;
import org.noodle.service.TimeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/timeline/*")
public class TimeReplyController {
	
	@Autowired
	TimeReplyService service;


	private static final Logger logger = LoggerFactory.getLogger(TimeReplyController.class);
	
	
	@GetMapping("/reply")
	public String reply(Integer tno,Model model) throws Exception {

		logger.info("Reply called.....");

		model.addAttribute("reply", service.listReply(tno));


		return "timeline/timeline";
	}
	
	


	@PostMapping("/registReply")
	public String registerPost(TimeReplyVO vo) throws Exception {

		
		logger.info("VO:" + vo);

		service.regist(vo);
		

		return "redirect:/timeline";

	}
	

	@PostMapping("/deleteReply")
	public String delete(TimeReplyVO vo, RedirectAttributes rttr,Model model)throws Exception{
	
		logger.info("REMOVE" + vo);

		service.remove(vo);

		return "redirect:/timeline";
	
	}
	
	@PostMapping("/modifyReply")
	public String modifyPost(TimeReplyVO vo, Model model) throws Exception{
		
		service.modify(vo);
		model.addAttribute("vo",vo);
		logger.info("Modify vo" + vo);

		return "redirect:/timeline"; 
	}
	

}
