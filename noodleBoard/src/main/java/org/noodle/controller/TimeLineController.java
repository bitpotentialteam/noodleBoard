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
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

<<<<<<< HEAD
@Controller
@RequestMapping("/")
=======

@Controller
@RequestMapping("/timeline/*")
>>>>>>> branch 'master' of https://github.com/bitpotentialteam/noodleBoard.git
public class TimeLineController {

	@Inject
	TimeLineService service;

	private static final Logger logger = LoggerFactory.getLogger(TimeLineController.class);
<<<<<<< HEAD

	@GetMapping("/timeline")
	public String timeLine(Model model) throws Exception {

		logger.info("getTIMELINE.....");

		model.addAttribute("list", service.listView());

		return "timeline/timeline";
	}
	

=======
>>>>>>> branch 'master' of https://github.com/bitpotentialteam/noodleBoard.git

	@PostMapping("/regist")
	public String registerPost(TimeLineVO vo) throws Exception {

		logger.info("VO:" + vo);

		service.regist(vo);
		
		
		System.out.println(vo);
		System.out.println(vo.getTno());

<<<<<<< HEAD
		return "redirect:/timeline";
=======
>>>>>>> branch 'master' of https://github.com/bitpotentialteam/noodleBoard.git

		return "redirect:/timeline";

	}
	
	@PostMapping("/delete")
	public String delete(Integer tno, RedirectAttributes rttr,Model model)throws Exception{
	
	//	logger.info("REMOVE" + tno);
		
		System.out.println(tno);
		
		service.remove(tno);

		return "redirect:/timeline";
	
	}
	
	@PostMapping("/modify")
	public String modifyPost(TimeLineVO vo, Model model) throws Exception{
		
		service.modify(vo);
		model.addAttribute("vo",vo);
		System.out.println(vo);

		return "redirect:/timeline"; 
	}
	
	@PostMapping("/delete")
	public String delete(Integer tno, RedirectAttributes rttr, Model model)throws Exception{
		
		TimeLineVO vo = new TimeLineVO();
		
		service.remove(tno);
		
		model.addAttribute("tno", vo.getTno());
		
		return "redirect:/timeline";

		
	}

}
