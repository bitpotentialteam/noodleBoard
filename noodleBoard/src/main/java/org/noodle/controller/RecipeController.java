package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.domain.RecipeBoardVO;
import org.noodle.service.RecipeBoardService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/recipe/*")
public class RecipeController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@Inject
	private RecipeBoardService service;
	
	
	//테스트
	@GetMapping("/register")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/register")
	public String registerPOST(RecipeBoardVO vo, RedirectAttributes rttr) throws Exception {
		service.regist(vo);
		return "redirect:/recipe/list";
	}
	
	@GetMapping("/list")
	public void listAll() throws Exception {
		logger.info("listAll.............");
	}
	
	
	@GetMapping("/testlist")
	public void listAll(Model model) throws Exception {
		System.out.println("listAll callll..........");
		model.addAttribute("list", service.listAll());
		System.out.println("listAll callll.........."+ service.listAll().toString() );
		
	
	}
	

}
