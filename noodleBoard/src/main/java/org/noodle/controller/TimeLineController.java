package org.noodle.controller;

import java.util.List;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/timeline/*")
public class TimeLineController {

	@Inject
	TimeLineService service;


	private static final Logger logger = LoggerFactory.getLogger(TimeLineController.class);

	@PostMapping("/regist")
	public String registerPost(TimeLineVO vo) throws Exception {

		logger.info("VO:" + vo);

		service.regist(vo);
		
		
		System.out.println(vo);
		System.out.println(vo.getTno());

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
		logger.info("Modify vo" + vo);

		return "redirect:/timeline"; 
	}
	
	@GetMapping("/addlikeCnt")

	public String likePost(TimeLineVO vo, Model model) throws Exception{
		
		logger.info("likelikelike....!");
		
	//	TimeLineVO vo = new TimeLineVO();
		service.addLikeCnt(vo);

	
		logger.info("addlikeCnt" + vo);

		return "redirect:/timeline"; 
	}
	
	@GetMapping("/firstListView")
	@ResponseBody
	public List<TimeLineVO> firstListView(@RequestParam("tno") Integer tno) throws Exception {

		logger.info("firstListView called.....");
		logger.info("tno" + tno);
		logger.info("vo" + service.firstListView(tno));
		service.firstListView(tno);

		return service.firstListView(tno);
	
	}	
	
	@GetMapping("/lastListView")
	@ResponseBody
	public List<TimeLineVO> lastListView(@RequestParam("tno") Integer tno) throws Exception {

		logger.info("lastListView called.....");
		logger.info("tno" + tno);
		logger.info("vo" + service.lastListView(tno));
		service.lastListView(tno);

		return service.lastListView(tno);
		
	}
}
