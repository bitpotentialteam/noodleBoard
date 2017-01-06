package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.noodle.domain.BoardList;
import org.noodle.domain.MemberVO;
import org.noodle.domain.PageMaker;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.SearchVO;
import org.noodle.service.MemberService;
import org.noodle.service.RecipeBoardService;
import org.noodle.service.RecipeCuisineService;
import org.noodle.service.RecipeImageService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
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
	
	@Autowired
	private MemberService mservice;
	
	
	@GetMapping("/register")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/register")
	public String registerPOST(RecipeBoardVO vo, BoardList boardList, RedirectAttributes rttr) throws Exception {
		logger.info("RegisterPOST FUCK");
		
		// 존나 민망하지만 급해서 어쩔 수 없습니다 핳핳하
		for(int i = 0; i < boardList.getIlist().size(); i++){
			String imageName = boardList.getIlist().get(i).getThumbnail().replaceAll("s_", "o_");
			boardList.getIlist().get(i).setImage(imageName);
		}
		
		logger.info("vo : " + vo);
		logger.info("ilist : "+boardList.getIlist());
		logger.info("clist : "+boardList.getClist());
		
		service.register(vo, boardList.getIlist(), boardList.getClist());
		return "redirect:/recipe/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri")SearchVO cri,Model model) throws Exception {
		
		logger.info("listAll.............");
		model.addAttribute("list", service.search(cri));

		List<RecipeBoardVO> blist = new ArrayList<RecipeBoardVO>();
		blist = service.search(cri);
		
		List<MemberVO> mlist = new ArrayList<MemberVO>();
		
		for(int i = 0; i<blist.size(); i++){
			MemberVO vo = mservice.read(blist.get(i).getMno());
			
			mlist.add(vo);
		}
		model.addAttribute("MemberList", mlist);
		
		logger.info("SearchType: "+cri.getSearchType());
		logger.info("keyWord: "+cri.getKeyword());
		if(cri.getSearchType() == "w".toString()){
			String mno = mservice.viewNick(cri.getKeyword()).getMno().toString();

			logger.info("=============================================");
			logger.info("mno(String): " + mno);
			logger.info("=============================================");
			cri.setKeyword(mno);
			logger.info(cri.getKeyword());
		}

		
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
		model.addAttribute("ilist", iservice.viewBno(bno));
		PageMaker pageMaker = new PageMaker();		
		pageMaker.setPageVO(cri);
		model.addAttribute("pageMaker", pageMaker);
	}

}
