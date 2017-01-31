package org.noodle.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.noodle.domain.BoardList;
import org.noodle.domain.MemberVO;
import org.noodle.domain.PageMaker;
import org.noodle.domain.RecipeBoardVO;
import org.noodle.domain.RecipeCuisineVO;
import org.noodle.domain.RecipeImageVO;
import org.noodle.domain.RecipeReplyVO;
import org.noodle.domain.SearchVO;
import org.noodle.domain.TimeLineVO;
import org.noodle.service.MemberService;
import org.noodle.service.RecipeBoardService;
import org.noodle.service.RecipeCuisineService;
import org.noodle.service.RecipeImageService;
import org.noodle.service.RecipeReplyService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	@Autowired
	private RecipeReplyService rservice;
	
	
	@GetMapping("/register")
	public void registerGET(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("register GET.................");
	}
	
	@PostMapping("/register")
	public String registerPOST(HttpSession session, RecipeBoardVO vo, BoardList boardList, RedirectAttributes rttr, Integer topImageIndex) throws Exception {
		logger.info("RegisterPOST FUCK");
		logger.info("BoardList" + boardList);
		
		
		// 존나 민망하지만 급해서 어쩔 수 없습니다 핳핳하
		for(int i = 0; i < boardList.getIlist().size(); i++){
			String imageName = boardList.getIlist().get(i).getThumbnail().replaceAll("s_", "o_");
			boardList.getIlist().get(i).setImage(imageName);
			logger.info("i" +i);
		}
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		mservice.read1(user.toString());
		MemberVO mvo = mservice.read1(user.toString());

		session.setAttribute("VO", mvo);
		
		logger.info("mvo : " + mvo);
		logger.info("ilist : "+boardList.getIlist());
		logger.info("clist : "+boardList.getClist());
		
		logger.info("topImageIndex: "+topImageIndex);
		logger.info("boardList.getIlist().get(topImageIndex).getThumbnail(): "+boardList.getIlist().get(topImageIndex).getThumbnail());
		
		logger.info("vo : " + vo);
		vo.setMno(mvo.getMno()); 
		service.register(vo, boardList.getIlist(), boardList.getClist());
		
		vo.setIno(iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		vo.setBno(service.viewTitle(vo.getTitle()).getBno());
		logger.info("Before ino modify vo: " + vo);
		
		service.modifyIno(vo);
		
		logger.info("viewThumbnail: "+iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		logger.info("topImageName: "+boardList.getIlist().get(topImageIndex).getThumbnail());
		logger.info("ino: "+iservice.viewThumbnail(boardList.getIlist().get(topImageIndex).getThumbnail()));
		
		return "redirect:/recipe/list";
	}
	
	
	@GetMapping("/list")
	public void list(@ModelAttribute("cri")SearchVO cri,Model model) throws Exception {
		
		logger.info("listAll.............");
		model.addAttribute("list", service.search(cri));
		model.addAttribute("ilist", iservice.listAll());
		
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		MemberVO mvo = mservice.read1(user.toString());
		
		model.addAttribute("VO", mvo);
		
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
		logger.info("orderType: "+cri.getOrderType());
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
	public void view(@RequestParam("bno") Integer bno, @ModelAttribute("cri") SearchVO cri, HttpSession session, Model model) throws Exception {
		
		logger.info("view.............");
		model.addAttribute("vo", service.view(bno));
		model.addAttribute("clist", cservice.view(bno));
		model.addAttribute("ilist", iservice.viewBno(bno));
		model.addAttribute("replyList", rservice.listAll(bno));
		logger.info("replyList : " + rservice.listAll(bno));
	
		List<RecipeReplyVO> rRlist = rservice.listAll(bno);
		Object user = SecurityContextHolder.getContext().getAuthentication().getName();
		logger.info(user.toString());
		MemberVO vo = mservice.read1(user.toString());
		
		RecipeBoardVO rvo = new RecipeBoardVO(); 
		rvo.setBno(bno);
		rvo.setMno(vo.getMno());
		logger.info("rvo : " + rvo);
		service.registView(rvo);
		model.addAttribute("likeCheck", service.likeHistory(rvo));
		
		logger.info("likeHistory : " + service.likeHistory(rvo));
		
		MemberVO nickVO = mservice.read(service.view(bno).getMno());
		
		List<MemberVO> mlist = new ArrayList<MemberVO>();
		List<RecipeReplyVO> rlist = new ArrayList<RecipeReplyVO>();
		rlist = rservice.listAll(bno);
		for(int i = 0; i < rlist.size(); i++){
			
			MemberVO mvo = mservice.read(rlist.get(i).getMno());
			mlist.add(mvo);
		}
		
		model.addAttribute("MemberList", mlist);
		model.addAttribute("nickVO", nickVO);
		
		session.setAttribute("VO", vo);
		PageMaker pageMaker = new PageMaker();		
		pageMaker.setPageVO(cri);
		model.addAttribute("pageMaker", pageMaker);
	}
	
	
	@PostMapping("/remove")
	public String remove(@RequestParam("bno") int bno, SearchVO cri, RedirectAttributes rttr) throws Exception {
		logger.info("DELETE.......");
		service.remove(bno);
		logger.info("BNO : " + bno);

//		rttr.addAttribute("page", cri.getPage());
//		rttr.addAttribute("perPageNum", cri.getPageUnit());
//		rttr.addAttribute("searchType", cri.getSearchType());
//		rttr.addAttribute("keyword", cri.getKeyword()); 

		rttr.addFlashAttribute("msg", "success");

		return "redirect:list";
	}
	
	@GetMapping("/modify")
	public void modifyGET(@RequestParam("bno") Integer bno, @ModelAttribute("cri") SearchVO cri, Model model) throws Exception {
		logger.info("modify called..................");
		model.addAttribute("vo", service.view(bno));
		model.addAttribute("clist", cservice.view(bno));
		model.addAttribute("ilist", iservice.viewBno(bno));
	}
	
	@PostMapping("/modify")
	public String modifyPOST(RecipeImageVO ivo, RecipeBoardVO bvo, BoardList boardList, RecipeCuisineVO cvo) throws Exception{
		logger.info("ModifyPOST called.....");
		
		logger.info("bvo: "+bvo.toString());
		logger.info("ivo: "+boardList.getIlist().toString());
		logger.info("cvo: "+boardList.getClist().toString());
		
		service.modify(bvo, boardList.getIlist(), boardList.getClist());
		iservice.regist(ivo);
		
		return "redirect:list";
	}

	@GetMapping("/addlikeCnt")
	@ResponseBody
	public Integer addlikeCtn(RecipeBoardVO vo, Model model)throws Exception{
		logger.info("addlike....");
		logger.info("vo : " + vo);
		
			service.addLikeCount(vo);
		
		
		return service.readLikeCnt(vo.getBno());
	

	}
	
	@GetMapping("/addViewCnt")
	@ResponseBody
	public void addViewCnt(RecipeBoardVO vo)throws Exception{
		logger.info("addlike....");
		logger.info("vo : " + vo);
		vo.setBno(vo.getBno());
		vo.setMno(vo.getMno());
		service.registView(vo);
	}
}
