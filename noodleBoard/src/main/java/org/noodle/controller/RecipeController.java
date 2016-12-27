package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.domain.RecipeBoardVO;
import org.noodle.service.RecipeBoardService;
import org.noodle.service.RecipeBoardServiceImpl;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/recipeboard/*")
public class RecipeController {
	
	private static final Logger logger = LoggerFactory.getLogger(NoodleController.class);
	
	@Inject
	private RecipeBoardService service;
	
	
	//테스트
	@GetMapping("/reciperegister")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/reciperegister")
	public String registerPOST(RecipeBoardVO vo, RedirectAttributes rttr) throws Exception {
		service.regist(vo);
		return "redirect:/recipeboard/list";
	}
	
	@GetMapping("/list")
	public void listAll() throws Exception {
		logger.info("listAll.............");
	}
	
	@GetMapping("/demo")
	public void test() throws Exception {
		logger.info("listAll.............");
	}
	
	

}
