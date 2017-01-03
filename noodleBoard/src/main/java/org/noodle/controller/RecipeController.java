package org.noodle.controller;

import javax.inject.Inject;

import org.noodle.domain.PageMaker;
import org.noodle.domain.PageVO;
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
	public String registerPOST(RecipeBoardVO vo, RecipeImageVO ilist, RecipeCuisineVO clist, RedirectAttributes rttr) throws Exception {

		logger.info("RegisterPOST FUCK");
		
//		List<RecipeImageVO> tilist = ilist;
//		List<RecipeCuisineVO> tclist = clist;
		
		logger.info("ilist : "+ilist);
		logger.info("clist : "+clist);
		
//		service.register(vo, ilist, clist);
		return "redirect:/recipe/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri")SearchVO cri,Model model) throws Exception {
		
		logger.info("listAll.............");
		model.addAttribute("list", service.listAll(cri));
		
		logger.info("listAll callll.........."+ service.listAll(cri).toString() );
		PageMaker pageMaker = new PageMaker();
		
		pageMaker.setPageVO(cri);
		
		pageMaker.setTotalCount(service.getTotalCount());
		
		model.addAttribute("pageMaker", pageMaker);

	}
	
	
	@GetMapping("/testlist")
	public void listAll(PageVO vo,Model model) throws Exception {
		System.out.println("testList callll..........");
		model.addAttribute("list", service.listAll(vo));
		System.out.println("listAll callll.........."+ service.listAll(vo).toString() );
		
	}
	
	@GetMapping("/view")
	public void view() throws Exception {
		logger.info("view.............");
	}

}
