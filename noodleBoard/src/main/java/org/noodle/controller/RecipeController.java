package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.PageMaker;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.domain.SearchVO;
import org.noodle.service.RecipeBoardService;
import org.noodle.service.RecipeCuisineService;
import org.noodle.service.RecipeImageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
@RequestMapping("/recipe/*") 
public class RecipeController {
	
	private static final Logger logger = LoggerFactory.getLogger(RecipeController.class);
	
	@Inject
	private RecipeBoardService service;
	
	@Inject
	private RecipeImageService iservice;
	
	@Inject
	private RecipeCuisineService cservice;
	
	
	@GetMapping("/register")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/register")
	public String registerPOST(RecipeBoardVO vo, ArrayList<RecipeImageVO> ilist, ArrayList<RecipeCuisineVO> clist, RedirectAttributes rttr) throws Exception {

		logger.info("RegisterPOST FUCK");
		
//		List<RecipeImageVO> tilist = ilist;
//		List<RecipeCuisineVO> tclist = clist;
		logger.info("vo : " + vo);
		logger.info("ilist : "+ilist);
		logger.info("clist : "+clist);
		
		service.register(vo, ilist, clist);
		return "redirect:/recipe/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri")SearchVO cri,Model model) throws Exception {
		
		logger.info("listAll.............");
		model.addAttribute("list", service.search(cri));
		
		logger.info("listAll callll.........."+ service.search(cri).toString());
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setPageVO(cri);
		pageMaker.setTotalCount(service.getTotalCount(cri));
		logger.info("endPage.........." + cri.getEndPage());
		
		model.addAttribute("pageMaker", pageMaker);

	}
	
	
	@GetMapping("/view")
	public void view(@RequestParam("bno") Integer bno, @ModelAttribute("cri") SearchVO cri, Model model) throws Exception {

		logger.info("view.............");
		model.addAttribute("vo", service.view(bno));
		model.addAttribute("clist", cservice.view(bno));
		
		PageMaker pageMaker = new PageMaker();		
		pageMaker.setPageVO(cri);
		model.addAttribute("pageMaker", pageMaker);
	}

}
