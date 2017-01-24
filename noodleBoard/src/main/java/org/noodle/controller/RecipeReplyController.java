package org.noodle.controller;

import java.util.List;

import org.noodle.domain.RecipeReplyVO;
import org.noodle.service.RecipeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/recipe/*") 
public class RecipeReplyController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	
	
	@Autowired
	private RecipeReplyService rservice;
	
	
	
	
	@PostMapping("/reReplyList")
	@ResponseBody
	public List<RecipeReplyVO> reReply(@RequestParam("rrno") Integer rrno) throws Exception{
		logger.info("rrno" + rrno);
//		model.addAttribute("rReplyList", rservice.seqRead(rrno));
		
		return rservice.seqRead(rrno);
	}

	
	@PostMapping("/registReply")
	@ResponseBody
	public List<RecipeReplyVO> recipeReplyPOST(RecipeReplyVO vo) throws Exception{
		logger.info("registReply called...............");
		rservice.regist(vo);
		logger.info("VO : " + vo);
		if(vo.getRrno() == null){
		return rservice.listAll(vo.getBno());
		}else{
		return rservice.seqRead(vo.getRrno());
		}
	}
		

	
	@PostMapping("/removeReply")
	@ResponseBody
	public void removeReplyPost(RecipeReplyVO vo) throws Exception{
		rservice.remove(vo);
	}

}
